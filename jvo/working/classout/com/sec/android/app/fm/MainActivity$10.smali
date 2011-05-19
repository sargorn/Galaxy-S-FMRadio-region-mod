.class Lcom/sec/android/app/fm/MainActivity$10;
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
    .line 2948
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$10;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2951
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2952
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$10;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2200(Lcom/sec/android/app/fm/MainActivity;)V

    .line 2953
    return-void
.end method
