.class Lcom/sec/android/app/fm/ui/MyProgressDialog$2;
.super Ljava/lang/Object;
.source "MyProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/MyProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/MyProgressDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/MyProgressDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog$2;->this$0:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 41
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_19

    .line 42
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog$2;->this$0:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    const-string v3, "FMPlayer"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    .line 44
    .local v1, mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :try_start_11
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->cancelAFSwitching()V
    :try_end_14
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_11 .. :try_end_14} :catch_1b

    .line 48
    :goto_14
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog$2;->this$0:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->finish()V

    .line 50
    .end local v1           #mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :cond_19
    const/4 v2, 0x0

    return v2

    .line 45
    .restart local v1       #mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :catch_1b
    move-exception v0

    .line 46
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_14
.end method
