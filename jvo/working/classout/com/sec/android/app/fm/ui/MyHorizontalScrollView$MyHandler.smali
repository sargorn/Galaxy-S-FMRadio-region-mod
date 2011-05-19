.class Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$MyHandler;
.super Landroid/os/Handler;
.source "MyHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;)V
    .registers 2
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$MyHandler;->this$0:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$MyHandler;-><init>(Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 330
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$MyHandler;->this$0:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    invoke-static {v0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->access$100(Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;)Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$MyHandler;->this$0:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    invoke-static {v0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->access$100(Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;)Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;->onScrolled(F)V

    .line 333
    :cond_1f
    return-void
.end method
