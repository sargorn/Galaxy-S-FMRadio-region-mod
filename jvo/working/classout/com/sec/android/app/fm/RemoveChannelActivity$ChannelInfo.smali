.class Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;
.super Ljava/lang/Object;
.source "RemoveChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RemoveChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelInfo"
.end annotation


# instance fields
.field channel:Lcom/sec/android/app/fm/data/Channel;

.field final synthetic this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

.field willDeleted:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/fm/RemoveChannelActivity;Lcom/sec/android/app/fm/data/Channel;)V
    .registers 3
    .parameter
    .parameter "channel"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->channel:Lcom/sec/android/app/fm/data/Channel;

    .line 70
    return-void
.end method
