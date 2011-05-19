.class public Lcom/sec/android/app/fm/TestMode;
.super Ljava/lang/Object;
.source "TestMode.java"


# static fields
.field private static _instance:Lcom/sec/android/app/fm/TestMode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/TestMode;->_instance:Lcom/sec/android/app/fm/TestMode;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/fm/TestMode;
    .registers 2

    .prologue
    .line 33
    const-class v0, Lcom/sec/android/app/fm/TestMode;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sec/android/app/fm/TestMode;->_instance:Lcom/sec/android/app/fm/TestMode;

    if-nez v1, :cond_e

    .line 34
    new-instance v1, Lcom/sec/android/app/fm/TestMode;

    invoke-direct {v1}, Lcom/sec/android/app/fm/TestMode;-><init>()V

    sput-object v1, Lcom/sec/android/app/fm/TestMode;->_instance:Lcom/sec/android/app/fm/TestMode;

    .line 35
    :cond_e
    sget-object v1, Lcom/sec/android/app/fm/TestMode;->_instance:Lcom/sec/android/app/fm/TestMode;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 33
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .registers 15
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v8, "frequency"

    const-string v8, ""

    .line 40
    :try_start_6
    const-string v8, "test.mode.radio.on.freq"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 42
    const-string v8, "frequency"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, freq:Ljava/lang/String;
    const-string v8, "output"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, output:Ljava/lang/String;
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/media/fmradio/FMPlayer;->on(Z)Z

    .line 46
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    .line 47
    .local v7, volume:I
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v10}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 50
    if-eqz v4, :cond_48

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 51
    :cond_48
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v9}, Lcom/samsung/media/fmradio/FMPlayer;->isHeadsetPlugged()Z

    move-result v9

    if-nez v9, :cond_73

    move v9, v12

    :goto_57
    invoke-virtual {v8, v9}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 57
    :cond_5a
    :goto_5a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 58
    .local v6, val:I
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    int-to-long v9, v6

    invoke-virtual {v8, v9, v10}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z
    :try_end_66
    .catchall {:try_start_6 .. :try_end_66} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_66} :catch_86

    .line 100
    .end local v2           #freq:Ljava/lang/String;
    .end local v4           #output:Ljava/lang/String;
    .end local v6           #val:I
    .end local v7           #volume:I
    :cond_66
    :goto_66
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "going for finish"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/fm/MainActivity;->finish()V

    .line 103
    :goto_72
    return-void

    .restart local v2       #freq:Ljava/lang/String;
    .restart local v4       #output:Ljava/lang/String;
    .restart local v7       #volume:I
    :cond_73
    move v9, v11

    .line 51
    goto :goto_57

    .line 52
    :cond_75
    :try_start_75
    const-string v8, "speaker"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 53
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_85} :catch_86

    goto :goto_5a

    .line 96
    .end local v2           #freq:Ljava/lang/String;
    .end local v4           #output:Ljava/lang/String;
    .end local v7           #volume:I
    :catch_86
    move-exception v8

    move-object v1, v8

    .line 97
    .local v1, e:Ljava/lang/Exception;
    :goto_88
    :try_start_88
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8, v1}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_ae

    .line 100
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "going for finish"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/fm/MainActivity;->finish()V

    goto :goto_72

    .line 54
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #freq:Ljava/lang/String;
    .restart local v4       #output:Ljava/lang/String;
    .restart local v7       #volume:I
    :cond_9d
    :try_start_9d
    const-string v8, "earphone"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 55
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z
    :try_end_ad
    .catchall {:try_start_9d .. :try_end_ad} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ad} :catch_86

    goto :goto_5a

    .line 100
    .end local v2           #freq:Ljava/lang/String;
    .end local v4           #output:Ljava/lang/String;
    .end local v7           #volume:I
    :catchall_ae
    move-exception v8

    :goto_af
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "going for finish"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/fm/MainActivity;->finish()V

    throw v8

    .line 60
    :cond_bc
    :try_start_bc
    const-string v8, "test.mode.radio.off"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 62
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z

    goto :goto_66

    .line 63
    :cond_d0
    const-string v8, "output"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_122

    .line 65
    const-string v8, "output"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .restart local v4       #output:Ljava/lang/String;
    if-eqz v4, :cond_f0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_106

    .line 67
    :cond_f0
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v9}, Lcom/samsung/media/fmradio/FMPlayer;->isHeadsetPlugged()Z

    move-result v9

    if-nez v9, :cond_104

    move v9, v12

    :goto_ff
    invoke-virtual {v8, v9}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    goto/16 :goto_66

    :cond_104
    move v9, v11

    goto :goto_ff

    .line 68
    :cond_106
    const-string v8, "speaker"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_118

    .line 69
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    goto/16 :goto_66

    .line 71
    :cond_118
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    goto/16 :goto_66

    .line 74
    .end local v4           #output:Ljava/lang/String;
    :cond_122
    const-string v8, "test.mode.radio.freq"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 76
    const-string v8, "frequency"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .restart local v2       #freq:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 79
    .restart local v6       #val:I
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/media/fmradio/FMPlayer;->on(Z)Z

    .line 80
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    .line 81
    .restart local v7       #volume:I
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v10}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 83
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    int-to-long v9, v6

    invoke-virtual {v8, v9, v10}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v9}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentRSSI()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, rssi:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "test.mode.radio.freq.response"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, bintent:Landroid/content/Intent;
    const-string v8, "frequency"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v8, "signal_strength"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8, v0}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending broadcast- freq:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rssi:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 91
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V
    :try_end_1b4
    .catchall {:try_start_bc .. :try_end_1b4} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_1b4} :catch_86

    .line 92
    .end local p1
    .local v3, intent:Landroid/content/Intent;
    :try_start_1b4
    const-string v8, "signal_strength"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const/4 v9, -0x1

    invoke-virtual {v8, v9, v3}, Lcom/sec/android/app/fm/MainActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_1bf
    .catchall {:try_start_1b4 .. :try_end_1bf} :catchall_1c2
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1bf} :catch_1c6

    move-object p1, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p1
    goto/16 :goto_66

    .line 100
    .end local p1
    .restart local v3       #intent:Landroid/content/Intent;
    :catchall_1c2
    move-exception v8

    move-object p1, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p1
    goto/16 :goto_af

    .line 96
    .end local p1
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_1c6
    move-exception v8

    move-object v1, v8

    move-object p1, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p1
    goto/16 :goto_88
.end method
