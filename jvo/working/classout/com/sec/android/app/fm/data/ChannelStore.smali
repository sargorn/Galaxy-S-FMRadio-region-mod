.class public Lcom/sec/android/app/fm/data/ChannelStore;
.super Ljava/lang/Object;
.source "ChannelStore.java"


# static fields
.field private static _instance:Lcom/sec/android/app/fm/data/ChannelStore;


# instance fields
.field private mInputStream:Ljava/io/ObjectInputStream;

.field private mOutputStream:Ljava/io/ObjectOutputStream;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/fm/data/ChannelStore;
    .registers 2

    .prologue
    .line 35
    const-class v0, Lcom/sec/android/app/fm/data/ChannelStore;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sec/android/app/fm/data/ChannelStore;->_instance:Lcom/sec/android/app/fm/data/ChannelStore;

    if-nez v1, :cond_e

    .line 36
    new-instance v1, Lcom/sec/android/app/fm/data/ChannelStore;

    invoke-direct {v1}, Lcom/sec/android/app/fm/data/ChannelStore;-><init>()V

    sput-object v1, Lcom/sec/android/app/fm/data/ChannelStore;->_instance:Lcom/sec/android/app/fm/data/ChannelStore;

    .line 37
    :cond_e
    sget-object v1, Lcom/sec/android/app/fm/data/ChannelStore;->_instance:Lcom/sec/android/app/fm/data/ChannelStore;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 35
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public load()V
    .registers 5

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "ChannelStorage"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    .line 73
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    .line 75
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loaded Channel List :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-nez v1, :cond_46

    .line 78
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_56

    .line 85
    :cond_46
    :try_start_46
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    if-eqz v1, :cond_4f

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4f} :catch_50

    .line 91
    :cond_4f
    :goto_4f
    return-void

    .line 87
    :catch_50
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 79
    .end local v0           #e:Ljava/io/IOException;
    :catch_56
    move-exception v1

    move-object v0, v1

    .line 81
    .local v0, e:Ljava/lang/Exception;
    :try_start_58
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "Creating new list"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_78

    .line 85
    :try_start_68
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    if-eqz v1, :cond_4f

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_71} :catch_72

    goto :goto_4f

    .line 87
    :catch_72
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 84
    .end local v0           #e:Ljava/io/IOException;
    :catchall_78
    move-exception v1

    .line 85
    :try_start_79
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    if-eqz v2, :cond_82

    .line 86
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_82} :catch_83

    .line 89
    :cond_82
    :goto_82
    throw v1

    .line 87
    :catch_83
    move-exception v2

    move-object v0, v2

    .line 88
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82
.end method

.method public store()V
    .registers 6

    .prologue
    .line 44
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    .line 63
    :cond_6
    :goto_6
    return-void

    .line 47
    :cond_7
    :try_start_7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storing :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/io/ObjectOutputStream;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ChannelStorage"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    .line 51
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 52
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_6a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_45} :catch_55

    .line 57
    :try_start_45
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_6

    .line 58
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4e} :catch_4f

    goto :goto_6

    .line 59
    :catch_4f
    move-exception v1

    move-object v0, v1

    .line 60
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 53
    .end local v0           #e:Ljava/io/IOException;
    :catch_55
    move-exception v1

    move-object v0, v1

    .line 54
    .local v0, e:Ljava/lang/Exception;
    :try_start_57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_6a

    .line 57
    :try_start_5a
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_6

    .line 58
    iget-object v1, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_63} :catch_64

    goto :goto_6

    .line 59
    :catch_64
    move-exception v1

    move-object v0, v1

    .line 60
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 56
    .end local v0           #e:Ljava/io/IOException;
    :catchall_6a
    move-exception v1

    .line 57
    :try_start_6b
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v2, :cond_74

    .line 58
    iget-object v2, p0, Lcom/sec/android/app/fm/data/ChannelStore;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_74} :catch_75

    .line 61
    :cond_74
    :goto_74
    throw v1

    .line 59
    :catch_75
    move-exception v2

    move-object v0, v2

    .line 60
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74
.end method

.method public terminate()V
    .registers 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 109
    return-void
.end method
