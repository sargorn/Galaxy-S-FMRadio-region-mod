.class Lcom/sec/android/app/fm/AllChannelActivity$6;
.super Ljava/lang/Object;
.source "AllChannelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/AllChannelActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 296
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$6;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 299
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 300
    return-void
.end method
