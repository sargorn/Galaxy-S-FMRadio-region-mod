.class Lcom/sec/android/app/fm/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 2919
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$9;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2923
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$9;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->cancelScan()Z
    :try_end_7
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2927
    :goto_7
    return-void

    .line 2924
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 2925
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$9;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_7
.end method
