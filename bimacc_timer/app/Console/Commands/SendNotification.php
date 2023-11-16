<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use DB;
use Illuminate\Support\Facades\Mail;
use Log;

class SendNotification extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    
    protected $signature = 'CronJobForSendNotification:cron';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
      parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
      try{

           // arbitrator auto reject start
        $rows=DB::select("SELECT  cn.id,cn.claimnoticeno,cac.arbitrator_id,cac.created_at from claimantnotice cn 
          INNER JOIN claimant_arbitrator_configuration cac ON(cac.claimnoticeid=cn.id) 
          WHERE cn.claimnoticestatus IN('Arbitrator Allocated and Waiting for the Respondent Payment' , 'Arbitrator To Accept the Allocation')
          AND DATE_FORMAT(DATE_ADD(cac.created_at, INTERVAL 5 DAY),'%y-%m-%d')=DATE_FORMAT(now(),'%y-%m-%d')");

        foreach ($rows as $data) {

          DB::delete('delete from claimant_arbitrator_configuration where claimnoticeid ='.$data->id);

          DB::table('claimantnotice')
          ->where('id' , $data->id)
          ->update(['claimnoticestatus' => 'Auto Rejected']);

          DB::table('claimantnoticestatus')->insert([
            'userid' => $data->arbitrator_id,
            'claimantnoticestatus'=>'Auto Rejected',
            'claimantnoticeid'=>$data->id,
            'created_at' => date("Y-m-d H:i:s", strtotime('+5 hours +30 minutes'))
          ]);
            // DB::table('claimantnoticestatus')->insert([
            //     'userid' => $data->arbitrator_id,
            //     'claimantnoticestatus'=>'Arbitrator Rejected',
            //     'claimantnoticeid'=>$data->id,
            //     'created_at' => date("Y-m-d H:i:s", strtotime('+5 hours +30 minutes'))
            // ]);


          $emails = DB::select("SELECT email,id from users WHERE roles_id = 1");
          foreach($emails as $Adminemail)
          {
           $newclaimant = [
            'body' => $data->claimnoticeno.' Auto Rejected',
            'actionURL' => "Auto Rejected",
          ];

          $newclaimant =  json_encode($newclaimant);
          $name =  $data->claimnoticeno.' Auto Rejected';
          $notifiable_type =  $data->claimnoticeno. 'Auto Rejected ';



          DB::table('notifications')->insert([
            'type' => 'Auto Rejection',
            'latest'=>'1',
            'name'=>$name,
            'notifiable_type'=>$notifiable_type,
            'data'=>$newclaimant,

            'notifiable_id'=>$Adminemail->id,
            'registration_claimnotice_id'=>$data->id,
            'created_at' => date("Y-m-d H:i:s", strtotime('+5 hours +30 minutes'))
          ]);
          $data_claimant = array(
            'email' => $Adminemail->email,
            'claimnoticeno' => $data->claimnoticeno,
          );

          $adminmail = $Adminemail->email;
          Mail::send('emails.arbitratortoadmin', ["data1"=> $data_claimant], function($message) use ($adminmail,$data_claimant){ 
            $message->to($adminmail)
            ->subject('Reg.Online Arbitration System - Claim Notice (NO - '.$data_claimant['claimnoticeno'].') - Auto Rejected ');
          });

        }
      }
           // arbitrator auto reject end

          // respondent decision auto upadte 21 days start
      $repondent_access=DB::select("SELECT * FROM claimantnotice WHERE claimnoticestatus='Respondent Access Provided Waiting for the Acceptance' AND DATE_FORMAT(DATE_ADD(access_time, INTERVAL 21 DAY),'%y-%m-%d')=DATE_FORMAT(now(),'%y-%m-%d')");


      foreach ($repondent_access as $access) {
        $claimnoticestatus="Disputing and Contesting the Claim";

        
         $decision_made=DB::select("SELECT user_id FROM respondantdetails WHERE claimnoticeid=".$access->id);
// echo json_encode($decision_made);exit;


        foreach ($decision_made as $decision_made1) { 
$decision_table=DB::select("SELECT * FROM respondents_decision WHERE created_id=".$decision_made1->user_id." and claim_notice_id=".$access->id."");

   if($decision_table==null)
{
         $remarks="auto_decision";
         DB::table('respondents_decision')->insert([
          'claim_notice_id' => $access->id,
          'respondent_decision'=>$claimnoticestatus,
          'remarks'=>$remarks,
          'created_id' => $decision_made1->user_id,
          'created_at' => NOW()
        ]);

         $emails = DB::select("SELECT email,id from users WHERE roles_id = 1");
         foreach($emails as $Adminemail)
         {
           $newclaimant = [
            'body' => $access->claimnoticeno.' Disputing and Contesting the Claim-Auto Updated',
            'actionURL' => "Disputing and Contesting the Claim-Auto Updated",
          ];

          $newclaimant =  json_encode($newclaimant);
          $name =  $access->claimnoticeno.' Disputing and Contesting the Claim-Auto Updated';
          $notifiable_type =  $access->claimnoticeno. 'Disputing and Contesting the Claim-Auto Updated ';



          DB::table('notifications')->insert([
            'type' => 'Disputing and Contesting the Claim-Auto Updated',
            'latest'=>'1',
            'name'=>$name,
            'notifiable_type'=>$notifiable_type,
            'data'=>$newclaimant,

            'notifiable_id'=>$Adminemail->id,
            'registration_claimnotice_id'=>$access->id,
            'created_at' => date("Y-m-d H:i:s", strtotime('+5 hours +30 minutes'))
          ]);


        }
      }
    }
      $respondent_count1=DB::select("SELECT * FROM respondantdetails WHERE claimnoticeid=".$access->id);
      $respondent_decision_count=DB::select("SELECT * FROM respondents_decision WHERE claim_notice_id=".$access->id);
// echo (count($respondent_count1));exit;
      if (count($respondent_count1) == count($respondent_decision_count))
      {
       $table = DB::table('claimantnotice')
       ->where('id' , $access->id)
       ->update(['claimnoticestatus' =>$claimnoticestatus,
        'respondant_status' =>  $claimnoticestatus]);
     }




   }

     // respondent decision auto upadte 21 days end
   $this->info('Demo:Cron Cummand Run successfully!');
   \Log::info("Cron is working fine!");
 }
 catch(\Exception $exc){


  Log::error('[Method => timer_catch => log_detail2 => Error Code:'.$exc.']');

}
}
}
