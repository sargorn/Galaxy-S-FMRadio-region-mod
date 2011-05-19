.class public Lcom/sec/android/app/fm/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;
    }
.end annotation


# static fields
.field private static CODE_REMOVE_NOTIFICATION:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBusy:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentChannel:J

.field private mHandler:Landroid/os/Handler;

.field mListener:Lcom/samsung/media/fmradio/FMEventListener;

.field private mMusicCommandRec:Landroid/content/BroadcastReceiver;

.field private mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private toast:Landroid/widget/Toast;

.field private toastAirplane:Landroid/widget/Toast;

.field private toastBatteryLow:Landroid/widget/Toast;

.field private toastError:Landroid/widget/Toast;

.field private toastNotRunning:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 83
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver$1;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver$2;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    .line 441
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    .line 442
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    .line 443
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    .line 444
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    .line 445
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 83
    new-instance v1, Lcom/sec/android/app/fm/NotificationReceiver$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/NotificationReceiver$1;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v1, Lcom/sec/android/app/fm/NotificationReceiver$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/NotificationReceiver$2;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    .line 441
    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    .line 442
    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    .line 443
    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    .line 444
    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    .line 445
    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    .line 63
    :try_start_1c
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_29

    .line 65
    new-instance v1, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    .line 66
    :cond_29
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v1, :cond_87

    .line 67
    const-string v1, "FMPlayer"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 69
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 71
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener is set :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->registerMusicCommandRec()V

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 76
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saving freq in init:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_87} :catch_88

    .line 81
    :cond_87
    :goto_87
    return-void

    .line 78
    :catch_88
    move-exception v1

    move-object v0, v1

    .line 79
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_87
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 27
    sget v0, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->sendONBroadcast()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/NotificationReceiver;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->getCurrentChannel()F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->sendOFFBroadcast()V

    return-void
.end method

.method static synthetic access$602(Lcom/sec/android/app/fm/NotificationReceiver;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/fm/NotificationReceiver;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mBusy:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/fm/NotificationReceiver;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mBusy:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/fm/NotificationReceiver;)Lcom/samsung/media/fmradio/FMPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    return-object v0
.end method

.method private error(Lcom/samsung/media/fmradio/FMPlayerException;)V
    .registers 7
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 449
    invoke-virtual {p1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_44

    .line 450
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    if-nez v0, :cond_3e

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f070057

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 452
    :cond_3e
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 473
    :goto_43
    return-void

    .line 453
    :cond_44
    invoke-virtual {p1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_65

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_57

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    .line 456
    :cond_57
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_43

    .line 458
    :cond_65
    invoke-virtual {p1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_86

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    if-nez v0, :cond_78

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    .line 461
    :cond_78
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_43

    .line 463
    :cond_86
    invoke-virtual {p1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a7

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    if-nez v0, :cond_99

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    .line 466
    :cond_99
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_43

    .line 469
    :cond_a7
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    if-nez v0, :cond_b5

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f07

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    .line 471
    :cond_b5
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_43
.end method

.method private fire(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 540
    :goto_4
    return-void

    .line 536
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 538
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NotificationReceiver] broadcast sent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private getCurrentChannel()F
    .registers 7

    .prologue
    .line 242
    const/high16 v1, -0x4080

    .line 244
    .local v1, freq:F
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 245
    iget-object v4, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_20

    move-result-wide v2

    .line 246
    .local v2, freqLong:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1f

    .line 247
    long-to-float v4, v2

    const/high16 v5, 0x447a

    div-float v1, v4, v5

    .line 254
    .end local v2           #freqLong:J
    :cond_1f
    :goto_1f
    return v1

    .line 250
    :catch_20
    move-exception v4

    move-object v0, v4

    .line 252
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method private sendOFFBroadcast()V
    .registers 4

    .prologue
    .line 521
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Sending off broadcast"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player.status.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/NotificationReceiver;->fire(Landroid/content/Intent;)V

    .line 524
    return-void
.end method

.method private sendONBroadcast()V
    .registers 4

    .prologue
    .line 528
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Sending on broadcast"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 529
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player.status.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/NotificationReceiver;->fire(Landroid/content/Intent;)V

    .line 531
    return-void
.end method

.method private unRegisterMusicCommandRec()V
    .registers 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 437
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Notification Rec - music command reciever un-registered"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 438
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const-string v0, "FMPlayer"

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_8

    .line 261
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    .line 262
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_13

    .line 263
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    .line 265
    :cond_13
    :try_start_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 267
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NotificationReceiver] getting action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    const-string v1, "com.android.fm.player"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 280
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 425
    :cond_55
    :goto_55
    return-void

    .line 288
    :cond_56
    const-string v1, "com.android.fm.player.on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_73

    .line 291
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_73} :catch_104

    .line 297
    :cond_73
    :try_start_73
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_55

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRegion(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 308
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification Rec - Got the volume from audiomanager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 312
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tunning to current freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f0

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-wide v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 315
    :cond_f0
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-static {v0, p1}, Lcom/sec/android/app/fm/MainActivity;->checkSettingAlarm(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    :try_end_fc
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_73 .. :try_end_fc} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_fc} :catch_104

    goto/16 :goto_55

    .line 318
    :catch_fe
    move-exception v0

    .line 319
    :try_start_ff
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/NotificationReceiver;->error(Lcom/samsung/media/fmradio/FMPlayerException;)V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_102} :catch_104

    goto/16 :goto_55

    .line 422
    :catch_104
    move-exception v0

    .line 423
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_55

    .line 323
    :cond_10a
    :try_start_10a
    const-string v1, "com.android.fm.player.off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_127

    .line 325
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_127} :catch_104

    .line 331
    :cond_127
    :try_start_127
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->cancelSeek()V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_144

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 335
    :cond_144
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saving freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z

    .line 338
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "power off done"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_174
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_127 .. :try_end_174} :catch_176
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_174} :catch_104

    goto/16 :goto_55

    .line 340
    :catch_176
    move-exception v0

    .line 341
    :try_start_177
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto/16 :goto_55

    .line 345
    :cond_17c
    const-string v1, "com.android.fm.player.tune.next"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d5

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_199

    .line 347
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V

    .line 352
    :cond_199
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_1be

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    if-nez v0, :cond_1af

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    .line 356
    :cond_1af
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_55

    .line 361
    :cond_1be
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_55

    .line 364
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/fm/NotificationReceiver$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/NotificationReceiver$3;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_55

    .line 383
    :cond_1d5
    const-string v1, "com.android.fm.player.tune.prev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_1f2

    .line 385
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V

    .line 390
    :cond_1f2
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_211

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    if-nez v0, :cond_20a

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const v1, 0x7f070015

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    .line 394
    :cond_20a
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_55

    .line 398
    :cond_211
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_55

    .line 401
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/fm/NotificationReceiver$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/NotificationReceiver$4;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_226} :catch_104

    goto/16 :goto_55
.end method

.method protected registerMusicCommandRec()V
    .registers 4

    .prologue
    .line 428
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 431
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Notification Rec - music command reciever registered"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public terminate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 546
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-eqz v1, :cond_27

    .line 548
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1a

    .line 550
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 551
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    .line 553
    :cond_1a
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->unRegisterMusicCommandRec()V

    .line 555
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[NotificationReceiver] removing listener"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 556
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mBusy:Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_2a

    .line 561
    :cond_27
    :goto_27
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 562
    return-void

    .line 557
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 558
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method
