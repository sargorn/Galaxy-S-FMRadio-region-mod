.class public Lcom/sec/android/app/fm/ChannelNameToSpeech;
.super Ljava/lang/Object;
.source "ChannelNameToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static _instance:Lcom/sec/android/app/fm/ChannelNameToSpeech;


# instance fields
.field private mSpeech:[Ljava/lang/String;

.field mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->_instance:Lcom/sec/android/app/fm/ChannelNameToSpeech;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;
    .registers 2

    .prologue
    .line 34
    const-class v0, Lcom/sec/android/app/fm/ChannelNameToSpeech;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sec/android/app/fm/ChannelNameToSpeech;->_instance:Lcom/sec/android/app/fm/ChannelNameToSpeech;

    if-nez v1, :cond_e

    .line 35
    new-instance v1, Lcom/sec/android/app/fm/ChannelNameToSpeech;

    invoke-direct {v1}, Lcom/sec/android/app/fm/ChannelNameToSpeech;-><init>()V

    sput-object v1, Lcom/sec/android/app/fm/ChannelNameToSpeech;->_instance:Lcom/sec/android/app/fm/ChannelNameToSpeech;

    .line 36
    :cond_e
    sget-object v1, Lcom/sec/android/app/fm/ChannelNameToSpeech;->_instance:Lcom/sec/android/app/fm/ChannelNameToSpeech;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 34
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected activityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 63
    const/4 v0, 0x7

    if-ne p1, v0, :cond_16

    .line 64
    const/4 v0, 0x1

    if-ne p2, v0, :cond_17

    .line 66
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 67
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[TextToSpeech]check voice data pass"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 93
    :cond_16
    :goto_16
    return-void

    .line 71
    :cond_17
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[TextToSpeech]we dont have any data lets go for installation"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto :goto_16
.end method

.method protected destroy()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 116
    :cond_9
    return-void
.end method

.method public onInit(I)V
    .registers 7
    .parameter "status"

    .prologue
    .line 99
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "[TextToSpeech]on init"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    iget-object v1, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mSpeech:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mSpeech:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_25

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mSpeech:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 102
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 106
    :cond_28
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "[TextToSpeech]speech is over.."

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public speakUp([Ljava/lang/String;)V
    .registers 6
    .parameter "speech"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mSpeech:[Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, checkIntent:Landroid/content/Intent;
    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    :try_start_c
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const/4 v3, 0x7

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/fm/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_13

    .line 54
    :goto_12
    return-void

    .line 51
    :catch_13
    move-exception v2

    move-object v1, v2

    .line 52
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_12
.end method
