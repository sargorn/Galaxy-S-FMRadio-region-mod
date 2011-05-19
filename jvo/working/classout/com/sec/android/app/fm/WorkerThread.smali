.class public Lcom/sec/android/app/fm/WorkerThread;
.super Ljava/lang/Thread;
.source "WorkerThread.java"


# static fields
.field private static _instance:Lcom/sec/android/app/fm/WorkerThread;


# instance fields
.field public mBusy:Z

.field public mFreq:J

.field private mResId:I

.field private mType:I

.field private mView:Landroid/view/View;

.field private stop:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/WorkerThread;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/WorkerThread;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/sec/android/app/fm/WorkerThread;->mResId:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/fm/WorkerThread;
    .registers 2

    .prologue
    .line 42
    const-class v0, Lcom/sec/android/app/fm/WorkerThread;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    if-nez v1, :cond_13

    .line 43
    new-instance v1, Lcom/sec/android/app/fm/WorkerThread;

    invoke-direct {v1}, Lcom/sec/android/app/fm/WorkerThread;-><init>()V

    sput-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    .line 44
    sget-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/WorkerThread;->start()V

    .line 46
    :cond_13
    sget-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized doOperation(IJLandroid/view/View;I)V
    .registers 8
    .parameter "type"
    .parameter "freq"
    .parameter "imgView"
    .parameter "resId"

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/sec/android/app/fm/WorkerThread;->mType:I

    .line 146
    iput-wide p2, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    .line 147
    iput-object p4, p0, Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;

    .line 148
    iput p5, p0, Lcom/sec/android/app/fm/WorkerThread;->mResId:I

    .line 150
    sget-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_17

    .line 151
    :try_start_c
    sget-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 152
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_14

    .line 154
    monitor-exit p0

    return-void

    .line 152
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 145
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 7

    .prologue
    .line 53
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/fm/WorkerThread;->stop:Z

    if-nez v1, :cond_16

    .line 55
    sget-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    monitor-enter v1

    .line 57
    :try_start_7
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "[WorkerThread] waiting for Job.."

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_27
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_11} :catch_21

    .line 63
    :goto_11
    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_27

    .line 64
    iget-boolean v1, p0, Lcom/sec/android/app/fm/WorkerThread;->stop:Z

    if-eqz v1, :cond_2a

    .line 132
    :cond_16
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    .line 133
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "[WorkerThread] terminated.."

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 134
    return-void

    .line 60
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 61
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_11

    .line 63
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    throw v2

    .line 66
    :cond_2a
    sget-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    monitor-enter v1

    .line 67
    :try_start_2d
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WorkerThread] got job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/fm/WorkerThread;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_2d .. :try_end_53} :catchall_6d

    .line 71
    :try_start_53
    iget v2, p0, Lcom/sec/android/app/fm/WorkerThread;->mType:I
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_55} :catch_89

    packed-switch v2, :pswitch_data_d6

    .line 114
    :cond_58
    :goto_58
    :try_start_58
    iget-object v2, p0, Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;

    if-eqz v2, :cond_68

    .line 115
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v3, Lcom/sec/android/app/fm/WorkerThread$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/WorkerThread$2;-><init>(Lcom/sec/android/app/fm/WorkerThread;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_68
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    .line 129
    :goto_6b
    monitor-exit v1

    goto :goto_0

    :catchall_6d
    move-exception v2

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_58 .. :try_end_6f} :catchall_6d

    throw v2

    .line 74
    :pswitch_70
    const/4 v2, 0x1

    :try_start_71
    iput-boolean v2, p0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    .line 76
    iget-wide v2, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    long-to-float v2, v2

    sget v3, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    const/high16 v4, 0x447a

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_58

    .line 77
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-wide v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    invoke-virtual {v2, v3, v4}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z
    :try_end_88
    .catchall {:try_start_71 .. :try_end_88} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_88} :catch_89

    goto :goto_58

    .line 106
    :catch_89
    move-exception v2

    move-object v0, v2

    .line 107
    .local v0, e:Ljava/lang/Exception;
    :try_start_8b
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v3, Lcom/sec/android/app/fm/WorkerThread$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/fm/WorkerThread$1;-><init>(Lcom/sec/android/app/fm/WorkerThread;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_b6

    .line 114
    :try_start_97
    iget-object v2, p0, Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;

    if-eqz v2, :cond_a7

    .line 115
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v3, Lcom/sec/android/app/fm/WorkerThread$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/WorkerThread$2;-><init>(Lcom/sec/android/app/fm/WorkerThread;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_a7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z
    :try_end_aa
    .catchall {:try_start_97 .. :try_end_aa} :catchall_6d

    goto :goto_6b

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_ab
    const/4 v2, 0x1

    :try_start_ac
    iput-boolean v2, p0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    .line 87
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->seekUp()J
    :try_end_b5
    .catchall {:try_start_ac .. :try_end_b5} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b5} :catch_89

    goto :goto_58

    .line 114
    :catchall_b6
    move-exception v2

    :try_start_b7
    iget-object v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;

    if-eqz v3, :cond_c7

    .line 115
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v4, Lcom/sec/android/app/fm/WorkerThread$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/WorkerThread$2;-><init>(Lcom/sec/android/app/fm/WorkerThread;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_c7
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    throw v2
    :try_end_cb
    .catchall {:try_start_b7 .. :try_end_cb} :catchall_6d

    .line 93
    :pswitch_cb
    const/4 v2, 0x1

    :try_start_cc
    iput-boolean v2, p0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    .line 97
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->seekDown()J
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d5} :catch_89

    goto :goto_58

    .line 71
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_70
        :pswitch_ab
        :pswitch_cb
    .end packed-switch
.end method

.method public terminate()V
    .registers 3

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/WorkerThread;->stop:Z

    .line 161
    sget-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    if-eqz v0, :cond_14

    .line 162
    sget-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    monitor-enter v0

    .line 163
    :try_start_a
    sget-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    if-eqz v1, :cond_13

    .line 164
    sget-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 165
    :cond_13
    monitor-exit v0

    .line 167
    :cond_14
    return-void

    .line 165
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v1
.end method
