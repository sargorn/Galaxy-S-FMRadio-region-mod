.class abstract Lcom/sec/android/app/fm/MainActivity$Callback;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Callback"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyUI()V
    .registers 1

    .prologue
    .line 3086
    return-void
.end method

.method public onChannelFound(J)V
    .registers 3
    .parameter "frequency"

    .prologue
    .line 3098
    return-void
.end method

.method public onOff(I)V
    .registers 2
    .parameter "reasonCode"

    .prologue
    .line 3089
    return-void
.end method

.method public onOn()V
    .registers 1

    .prologue
    .line 3092
    return-void
.end method

.method public onScanFinished([J)V
    .registers 2
    .parameter "frequency"

    .prologue
    .line 3101
    return-void
.end method

.method public onScanStarted()V
    .registers 1

    .prologue
    .line 3104
    return-void
.end method

.method public onScanStopped([J)V
    .registers 2
    .parameter "frequency"

    .prologue
    .line 3107
    return-void
.end method

.method public onTune(J)V
    .registers 3
    .parameter "frequency"

    .prologue
    .line 3095
    return-void
.end method
