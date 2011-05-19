.class Lcom/sec/android/app/fm/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const-string v0, "USA"

    const-string v0, "Worker thread is buys ignore it"

    .line 380
    :try_start_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_346

    .line 614
    :cond_b
    :goto_b
    return-void

    .line 383
    :sswitch_c
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick all channel]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$302(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-class v3, Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_28

    goto :goto_b

    .line 610
    :catch_28
    move-exception v0

    .line 611
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_b

    .line 390
    :sswitch_2f
    :try_start_2f
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick scan]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_28

    .line 392
    :try_start_36
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v1, 0x7f070008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_4d
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_36 .. :try_end_4d} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4d} :catch_28

    goto :goto_b

    .line 397
    :catch_4e
    move-exception v0

    .line 398
    :try_start_4f
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    .line 401
    :cond_54
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto :goto_b

    .line 405
    :sswitch_5b
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick done]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 413
    :sswitch_78
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick cancel]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 421
    :sswitch_96
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a8

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->showVolumeBar()V

    goto/16 :goto_b

    .line 424
    :cond_a8
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    goto/16 :goto_b

    .line 431
    :sswitch_af
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - AF]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 437
    :sswitch_cb
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - Earphone]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 445
    :sswitch_e7
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_fa

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "Worker thread is buys ignore it"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 449
    :cond_fa
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - Control Prev]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/fm/WorkerThread;->doOperation(IJLandroid/view/View;I)V

    goto/16 :goto_b

    .line 459
    :cond_11b
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->toastOn()V

    goto/16 :goto_b

    .line 464
    :sswitch_122
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - Control Minus]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_13c

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "Worker thread is buys ignore it"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 469
    :cond_13c
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "SettingsPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "region"

    const-string v2, "Europe"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    const v1, 0x3dcccccd

    .line 472
    const-string v2, "USA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15b

    .line 473
    const v1, 0x3e4ccccd

    .line 475
    :cond_15b
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v2, v2, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    sub-float v1, v2, v1

    .line 476
    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_17a

    const-string v2, "USA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17a

    .line 477
    sget v0, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    .line 480
    :goto_173
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->setFrequency(F)V

    goto/16 :goto_b

    .line 478
    :cond_17a
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_343

    .line 479
    const v0, 0x42d7cccd

    goto :goto_173

    .line 488
    :sswitch_184
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - Control Play/pause]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 494
    :sswitch_1a2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - Control Plus]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_1bc

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "Worker thread is buys ignore it"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 499
    :cond_1bc
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "SettingsPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "region"

    const-string v2, "Europe"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    const v1, 0x3dcccccd

    .line 502
    const-string v2, "USA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_340

    .line 503
    const v0, 0x3e4ccccd

    .line 505
    :goto_1db
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v1, v1, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    add-float/2addr v0, v1

    .line 506
    sget v1, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1ea

    .line 507
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 508
    :cond_1ea
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->setFrequency(F)V

    goto/16 :goto_b

    .line 512
    :sswitch_1f1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_204

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "Worker thread is buys ignore it"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 516
    :cond_204
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - Control Next]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_225

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/fm/WorkerThread;->doOperation(IJLandroid/view/View;I)V

    goto/16 :goto_b

    .line 526
    :cond_225
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->toastOn()V

    goto/16 :goto_b

    .line 532
    :sswitch_22c
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 537
    :sswitch_243
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 543
    :sswitch_25a
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 549
    :sswitch_271
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 556
    :sswitch_288
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 561
    :sswitch_29f
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 568
    :sswitch_2b6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x130

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x130

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 573
    :sswitch_2cd
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 579
    :sswitch_2e4
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 584
    :sswitch_2fb
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 592
    :sswitch_312
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x132

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x132

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 597
    :sswitch_329
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_33e} :catch_28

    goto/16 :goto_b

    :cond_340
    move v0, v1

    goto/16 :goto_1db

    :cond_343
    move v0, v1

    goto/16 :goto_173

    .line 380
    :sswitch_data_346
    .sparse-switch
        0x7f090011 -> :sswitch_96
        0x7f090012 -> :sswitch_cb
        0x7f090020 -> :sswitch_af
        0x7f090021 -> :sswitch_e7
        0x7f090022 -> :sswitch_122
        0x7f090023 -> :sswitch_184
        0x7f090024 -> :sswitch_1a2
        0x7f090025 -> :sswitch_1f1
        0x7f090026 -> :sswitch_22c
        0x7f09002a -> :sswitch_243
        0x7f09002c -> :sswitch_25a
        0x7f090030 -> :sswitch_271
        0x7f090032 -> :sswitch_288
        0x7f090036 -> :sswitch_29f
        0x7f090038 -> :sswitch_2b6
        0x7f09003c -> :sswitch_2cd
        0x7f09003e -> :sswitch_2e4
        0x7f090042 -> :sswitch_2fb
        0x7f090044 -> :sswitch_312
        0x7f090048 -> :sswitch_329
        0x7f09004f -> :sswitch_c
        0x7f090050 -> :sswitch_2f
        0x7f090051 -> :sswitch_5b
        0x7f090052 -> :sswitch_78
    .end sparse-switch
.end method
