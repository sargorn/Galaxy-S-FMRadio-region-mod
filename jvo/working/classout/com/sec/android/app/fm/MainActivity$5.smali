.class Lcom/sec/android/app/fm/MainActivity$5;
.super Lcom/samsung/media/fmradio/FMEventListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private offCode:I

.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;

.field toastAF:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMEventListener;-><init>()V

    return-void
.end method

.method private scanningOver()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 984
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v3, v3, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 985
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1600(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1010
    :goto_26
    return-void

    .line 988
    :cond_27
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 989
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 991
    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_46

    .line 992
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_46} :catch_e2

    .line 994
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1900(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 995
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v1, v1, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-le v1, v6, :cond_a4

    .line 996
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1900(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v3, 0x7f070013

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v5, v5, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1005
    :cond_72
    :goto_72
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1006
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1007
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$1900(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$2000(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/Runnable;

    move-result-object v2

    aput-object v2, v1, v6

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1008
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1009
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v2, 0x9

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_26

    .line 998
    .end local v0           #msg:Landroid/os/Message;
    :cond_a4
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v1, v1, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-ne v1, v6, :cond_c9

    .line 999
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1900(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v3, 0x7f070014

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v5, v5, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 1001
    :cond_c9
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v1, v1, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-nez v1, :cond_72

    .line 1002
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1900(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v3, 0x7f070056

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 993
    :catch_e2
    move-exception v1

    goto/16 :goto_46
.end method


# virtual methods
.method public earPhoneDisconnected()V
    .registers 2

    .prologue
    .line 1125
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity$5;->offCode:I

    .line 1126
    return-void
.end method

.method public declared-synchronized onAFReceived(J)V
    .registers 11
    .parameter "freq"

    .prologue
    const/high16 v6, 0x447a

    const/high16 v5, 0x4120

    .line 1137
    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAFReceived : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1145
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_5d

    .line 1147
    long-to-float v2, p1

    div-float/2addr v2, v6

    float-to-int v1, v2

    .line 1148
    .local v1, freqInt:I
    long-to-float v2, p1

    div-float/2addr v2, v6

    mul-float/2addr v2, v5

    rem-float/2addr v2, v5

    float-to-int v0, v2

    .line 1149
    .local v0, freqDec:I
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->toastAF:Landroid/widget/Toast;

    if-nez v2, :cond_39

    .line 1150
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->toastAF:Landroid/widget/Toast;

    .line 1151
    :cond_39
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->toastAF:Landroid/widget/Toast;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f070052

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->toastAF:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_5f

    .line 1156
    .end local v0           #freqDec:I
    .end local v1           #freqInt:I
    :cond_5d
    monitor-exit p0

    return-void

    .line 1137
    :catchall_5f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onAFStarted()V
    .registers 3

    .prologue
    .line 1129
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "onAFStarted"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 1134
    monitor-exit p0

    return-void

    .line 1129
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onChannelFound(J)V
    .registers 15
    .parameter "frequency"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0x4120

    const/4 v8, 0x1

    const/high16 v7, 0x447a

    .line 929
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event [onChannelFound] freq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "count :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v5, v5, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 932
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$1400(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 962
    :cond_35
    return-void

    .line 935
    :cond_36
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v4, v3, Lcom/sec/android/app/fm/MainActivity;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sec/android/app/fm/MainActivity;->count:I

    .line 936
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v3, v3, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    const/high16 v4, -0x4080

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v3, v3, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    mul-float/2addr v3, v7

    long-to-float v4, p1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_58

    .line 937
    :cond_52
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    long-to-float v4, p1

    div-float/2addr v4, v7

    iput v4, v3, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    .line 940
    :cond_58
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    long-to-float v4, p1

    div-float/2addr v4, v7

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v3

    if-nez v3, :cond_70

    .line 941
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v4, Lcom/sec/android/app/fm/data/Channel;

    long-to-float v5, p1

    div-float/2addr v5, v7

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lcom/sec/android/app/fm/data/Channel;-><init>(FLjava/lang/String;)V

    invoke-static {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->access$1500(Lcom/sec/android/app/fm/MainActivity;Lcom/sec/android/app/fm/data/Channel;)V

    .line 942
    :cond_70
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$1600(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v3

    if-eqz v3, :cond_b9

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_b9

    .line 944
    long-to-float v3, p1

    div-float/2addr v3, v7

    float-to-int v1, v3

    .line 945
    .local v1, freqInt:I
    long-to-float v3, p1

    div-float/2addr v3, v7

    mul-float/2addr v3, v9

    rem-float/2addr v3, v9

    float-to-int v0, v3

    .line 946
    .local v0, freqDec:I
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v3, v3, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-le v3, v8, :cond_e0

    .line 947
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v5, 0x7f070011

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v7, v7, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 958
    .end local v0           #freqDec:I
    .end local v1           #freqInt:I
    :cond_b9
    :goto_b9
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 959
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c2
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 960
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/fm/MainActivity$Callback;->onChannelFound(J)V

    .line 959
    add-int/lit8 v2, v2, 0x1

    goto :goto_c2

    .line 951
    .end local v2           #i:I
    .restart local v0       #freqDec:I
    .restart local v1       #freqInt:I
    :cond_e0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v5, 0x7f070012

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v7, v7, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_b9
.end method

.method public onOff(I)V
    .registers 9
    .parameter "reasonCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v4, ""

    .line 844
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event [onOff] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 846
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$500(Lcom/sec/android/app/fm/MainActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 847
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/high16 v2, -0x4080

    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 849
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 850
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3b
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 851
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/fm/MainActivity$Callback;->onOff(I)V

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 854
    .end local v0           #i:I
    :cond_59
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$900(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    const/16 v1, 0xa

    if-ne p1, v1, :cond_ad

    .line 857
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    if-nez v1, :cond_a8

    .line 858
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f070057

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 859
    :cond_a8
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 861
    :cond_ad
    iget v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->offCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_cd

    .line 862
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    if-nez v1, :cond_be

    .line 863
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    .line 864
    :cond_be
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 865
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 866
    iput v5, p0, Lcom/sec/android/app/fm/MainActivity$5;->offCode:I

    .line 868
    :cond_cd
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1, v6}, Lcom/sec/android/app/fm/MainActivity;->access$102(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 869
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1, v6}, Lcom/sec/android/app/fm/MainActivity;->access$1002(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 870
    invoke-static {}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->cancel()V

    .line 871
    return-void
.end method

.method public onOn()V
    .registers 4

    .prologue
    .line 879
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "Event [onOn]"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 880
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->offCode:I

    .line 883
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$1100(Lcom/sec/android/app/fm/MainActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 886
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 887
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 888
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity$Callback;->onOn()V

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 894
    .end local v0           #i:I
    :cond_40
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v2, v2, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 896
    return-void
.end method

.method public onRDSDisabled()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1105
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$102(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$1002(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1109
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 1110
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$900(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    return-void
.end method

.method public onRDSEnabled()V
    .registers 1

    .prologue
    .line 1119
    return-void
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "freq"
    .parameter "channelName"
    .parameter "radioText"

    .prologue
    const/4 v4, 0x1

    const-string v5, ""

    .line 1068
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onRDSReceived] freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ChannelName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RadioText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1079
    if-eqz p3, :cond_64

    const-string v1, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 1080
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$100(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, setStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$100(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 1082
    :cond_4d
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1084
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1, p3}, Lcom/sec/android/app/fm/MainActivity;->access$102(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1087
    .end local v0           #setStr:Ljava/lang/String;
    :cond_64
    if-eqz p4, :cond_a0

    const-string v1, ""

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a0

    .line 1089
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1000(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    .restart local v0       #setStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1000(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_82

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 1091
    :cond_82
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$900(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1, p4}, Lcom/sec/android/app/fm/MainActivity;->access$1002(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1093
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$900(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1094
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "RDS String is set on text field"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1099
    .end local v0           #setStr:Ljava/lang/String;
    :cond_a0
    :goto_a0
    return-void

    .line 1096
    .restart local v0       #setStr:Ljava/lang/String;
    :cond_a1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "RDS String is same ignoring setting"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_a0
.end method

.method public onScanFinished([J)V
    .registers 6
    .parameter "frequency"

    .prologue
    .line 970
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event [onScanFinished] freq[]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$1802(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 972
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1400(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 973
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$1402(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 974
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity$5;->scanningOver()V

    .line 977
    :cond_30
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 978
    const/4 v0, 0x0

    .local v0, i:I
    :goto_39
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 979
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/fm/MainActivity$Callback;->onScanFinished([J)V

    .line 978
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 981
    .end local v0           #i:I
    :cond_57
    return-void
.end method

.method public onScanStarted()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1018
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "Event [onScanStarted]"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1019
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iput v3, v1, Lcom/sec/android/app/fm/MainActivity;->count:I

    .line 1020
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/high16 v2, -0x4080

    iput v2, v1, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    .line 1022
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1, v3}, Lcom/sec/android/app/fm/MainActivity;->access$1402(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1024
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1600(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 1025
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1800(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1026
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1030
    :goto_3b
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v3, 0x7f07000c

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1034
    :cond_4d
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1036
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 1037
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5d
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_88

    .line 1038
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity$Callback;->onScanStarted()V

    .line 1037
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 1028
    .end local v0           #i:I
    :cond_7b
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    goto :goto_3b

    .line 1040
    :cond_88
    return-void
.end method

.method public onScanStopped([J)V
    .registers 5
    .parameter "frequency"

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "Event [onScanStopped]"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1050
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$1802(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1051
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1400(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1052
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$1402(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1053
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity$5;->scanningOver()V

    .line 1057
    :cond_1e
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 1058
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 1059
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/fm/MainActivity$Callback;->onScanStopped([J)V

    .line 1058
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1061
    .end local v0           #i:I
    :cond_45
    return-void
.end method

.method public onTune(J)V
    .registers 9
    .parameter "frequency"

    .prologue
    const/4 v5, 0x0

    .line 904
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event [onTune] freq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 905
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2, v5}, Lcom/sec/android/app/fm/MainActivity;->access$1002(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 906
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2, v5}, Lcom/sec/android/app/fm/MainActivity;->access$102(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 908
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    .line 909
    .local v0, freq:F
    const/high16 v2, -0x4080

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_50

    .line 910
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setFrequencyAfterTune(F)V

    .line 911
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2, v0}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 912
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2, v0}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 913
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$900(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$1300(Lcom/sec/android/app/fm/MainActivity;)V

    .line 917
    :cond_50
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 918
    const/4 v1, 0x0

    .local v1, i:I
    :goto_59
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7b

    .line 919
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    const/high16 v3, 0x447a

    mul-float/2addr v3, v0

    float-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/fm/MainActivity$Callback;->onTune(J)V

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 921
    .end local v1           #i:I
    :cond_7b
    return-void
.end method
