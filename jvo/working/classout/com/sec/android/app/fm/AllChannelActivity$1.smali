.class Lcom/sec/android/app/fm/AllChannelActivity$1;
.super Lcom/sec/android/app/fm/MainActivity$Callback;
.source "AllChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/AllChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/AllChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/AllChannelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity$Callback;-><init>()V

    return-void
.end method

.method private scanningOver()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v0, :cond_f

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 128
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 130
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/AllChannelActivity;->showDialog(I)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 132
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-le v0, v3, :cond_6c

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v2, 0x7f070013

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v4, v4, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 145
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/fm/AllChannelActivity$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/AllChannelActivity$1$1;-><init>(Lcom/sec/android/app/fm/AllChannelActivity$1;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x9

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    return-void

    .line 136
    :cond_6c
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-ne v0, v3, :cond_91

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v2, 0x7f070014

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v4, v4, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_52

    .line 140
    :cond_91
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-nez v0, :cond_52

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_52
.end method


# virtual methods
.method public notifyUI()V
    .registers 3

    .prologue
    .line 62
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "AllChannel Activity : notify UI"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v0, :cond_14

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 65
    :cond_14
    return-void
.end method

.method public onChannelFound(J)V
    .registers 13
    .parameter "frequency"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v4, 0x447a

    const/high16 v3, 0x4120

    const/4 v7, 0x1

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v2, :cond_14

    .line 91
    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 92
    :cond_14
    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 93
    long-to-float v2, p1

    div-float/2addr v2, v4

    float-to-int v1, v2

    .line 94
    .local v1, freqInt:I
    long-to-float v2, p1

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    rem-float/2addr v2, v3

    float-to-int v0, v2

    .line 96
    .local v0, freqDec:I
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v2, v2, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-le v2, v7, :cond_56

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v4, 0x7f070011

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 105
    .end local v0           #freqDec:I
    .end local v1           #freqInt:I
    :cond_55
    :goto_55
    return-void

    .line 101
    .restart local v0       #freqDec:I
    .restart local v1       #freqInt:I
    :cond_56
    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v4, 0x7f070012

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_55
.end method

.method public onOff(I)V
    .registers 3
    .parameter "reasonCode"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v0, :cond_d

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 87
    :cond_d
    return-void
.end method

.method public onOn()V
    .registers 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v1, :cond_d

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 71
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    if-nez v1, :cond_1c

    .line 73
    :try_start_17
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->notifyToStatusBar()V
    :try_end_1c
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 78
    :cond_1c
    :goto_1c
    return-void

    .line 74
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 75
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_1c
.end method

.method public onScanFinished([J)V
    .registers 2
    .parameter "frequency"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/fm/AllChannelActivity$1;->scanningOver()V

    .line 122
    return-void
.end method

.method public onScanStarted()V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v0, :cond_d

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 110
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    :cond_27
    return-void
.end method

.method public onScanStopped([J)V
    .registers 2
    .parameter "frequency"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/sec/android/app/fm/AllChannelActivity$1;->scanningOver()V

    .line 118
    return-void
.end method

.method public onTune(J)V
    .registers 4
    .parameter "frequency"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v0, :cond_d

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 83
    :cond_d
    return-void
.end method
