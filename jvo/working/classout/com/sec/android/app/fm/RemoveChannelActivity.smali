.class public Lcom/sec/android/app/fm/RemoveChannelActivity;
.super Landroid/app/Activity;
.source "RemoveChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/RemoveChannelActivity$MyHandler;,
        Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;,
        Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;
    }
.end annotation


# static fields
.field private static toast:Landroid/widget/Toast;


# instance fields
.field private cbSelectAll:Landroid/widget/CheckBox;

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAllChList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackKey:Z

.field mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

.field private mChannelListView:Landroid/widget/ListView;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Lcom/sec/android/app/fm/RemoveChannelActivity$MyHandler;

.field private mSelectAll:Z

.field private mSelected:Z

.field private softKeyRemove:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private tblSelectAll:Landroid/widget/TableLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Lcom/sec/android/app/fm/RemoveChannelActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RemoveChannelActivity$1;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    .line 526
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/RemoveChannelActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->makeAllSelection(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->cbSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/RemoveChannelActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/RemoveChannelActivity;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->softKeyRemove:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/fm/RemoveChannelActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/fm/RemoveChannelActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->checkSelection()V

    return-void
.end method

.method private checkSelection()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 173
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    if-eqz v2, :cond_1a

    .line 174
    add-int/lit8 v1, v1, 0x1

    .line 172
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 178
    :cond_1d
    if-eqz v1, :cond_3e

    .line 179
    iput-boolean v3, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z

    .line 183
    :goto_21
    iget-boolean v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z

    if-eqz v2, :cond_41

    .line 184
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->softKeyRemove:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 188
    :goto_2a
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_34

    .line 189
    iput-boolean v3, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z

    .line 190
    :cond_34
    iget-boolean v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z

    if-eqz v2, :cond_47

    .line 191
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->cbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 194
    :goto_3d
    return-void

    .line 181
    :cond_3e
    iput-boolean v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z

    goto :goto_21

    .line 186
    :cond_41
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->softKeyRemove:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_2a

    .line 193
    :cond_47
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->cbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3d
.end method

.method private createScannedList([Z)V
    .registers 6
    .parameter "array"

    .prologue
    .line 234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    .line 235
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 236
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/data/Channel;

    .line 237
    .local v1, channel:Lcom/sec/android/app/fm/data/Channel;
    new-instance v0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;Lcom/sec/android/app/fm/data/Channel;)V

    .line 238
    .local v0, chInfo:Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;
    if-eqz p1, :cond_2a

    array-length v3, p1

    if-ge v2, v3, :cond_2a

    .line 239
    aget-boolean v3, p1, v2

    iput-boolean v3, v0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    .line 241
    :cond_2a
    iget-object v3, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 243
    .end local v0           #chInfo:Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    :cond_32
    return-void
.end method

.method private makeAllSelection(Z)V
    .registers 4
    .parameter "b"

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iput-boolean p1, v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_16
    iput-boolean p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z

    .line 168
    return-void
.end method

.method private search(Ljava/lang/Float;)F
    .registers 9
    .parameter "freq"

    .prologue
    .line 321
    iget-object v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b

    .line 322
    const/high16 v4, -0x4080

    .line 334
    .end local p0
    :goto_a
    return v4

    .line 323
    .restart local p0
    :cond_b
    const/high16 v2, 0x4348

    .line 324
    .local v2, least:F
    const/4 v3, 0x0

    .line 325
    .local v3, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    iget-object v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_36

    .line 326
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-object v4, v4, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->channel:Lcom/sec/android/app/fm/data/Channel;

    iget v4, v4, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 327
    .local v0, diff:F
    cmpg-float v4, v0, v2

    if-gez v4, :cond_33

    .line 328
    move v2, v0

    .line 329
    move v3, v1

    .line 325
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 332
    .end local v0           #diff:F
    :cond_36
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this is the pos :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 334
    iget-object v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-object v4, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->channel:Lcom/sec/android/app/fm/data/Channel;

    iget v4, v4, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    goto :goto_a
.end method


# virtual methods
.method public delete()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x4120

    const/high16 v9, -0x4080

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 261
    iget-boolean v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z

    if-nez v7, :cond_26

    .line 262
    invoke-virtual {p0, v10}, Lcom/sec/android/app/fm/RemoveChannelActivity;->showDialog(I)V

    .line 264
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 265
    .local v5, msg:Landroid/os/Message;
    iput v11, v5, Landroid/os/Message;->what:I

    .line 266
    iget-object v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mDialog:Landroid/app/Dialog;

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mHandler:Lcom/sec/android/app/fm/RemoveChannelActivity$MyHandler;

    invoke-virtual {v7, v11}, Lcom/sec/android/app/fm/RemoveChannelActivity$MyHandler;->removeMessages(I)V

    .line 268
    iget-object v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mHandler:Lcom/sec/android/app/fm/RemoveChannelActivity$MyHandler;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v5, v8, v9}, Lcom/sec/android/app/fm/RemoveChannelActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 318
    .end local v5           #msg:Landroid/os/Message;
    :goto_25
    return-void

    .line 273
    :cond_26
    sget-object v7, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v7, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v8

    .line 274
    :try_start_2b
    iget-object v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v4, v7, v10

    .local v4, i:I
    :goto_33
    if-ltz v4, :cond_63

    .line 276
    iget-object v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-boolean v7, v7, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    if-nez v7, :cond_44

    .line 274
    :goto_41
    add-int/lit8 v4, v4, -0x1

    goto :goto_33

    .line 278
    :cond_44
    iget-object v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-object v0, v7, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->channel:Lcom/sec/android/app/fm/data/Channel;

    .line 279
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    sget-object v7, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v7, v7, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 280
    iget-object v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 281
    iget-object v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_41

    .line 283
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v4           #i:I
    :catchall_60
    move-exception v7

    monitor-exit v8
    :try_end_62
    .catchall {:try_start_2b .. :try_end_62} :catchall_60

    throw v7

    .restart local v4       #i:I
    :cond_63
    :try_start_63
    monitor-exit v8
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_60

    .line 284
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 287
    sget-object v7, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v1

    .line 288
    .local v1, freq:F
    cmpl-float v7, v1, v9

    if-eqz v7, :cond_b9

    .line 289
    sget-object v7, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v7, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 290
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v0, :cond_b9

    iget-object v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b9

    .line 291
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/fm/RemoveChannelActivity;->search(Ljava/lang/Float;)F

    move-result v6

    .line 293
    .local v6, tFreq:F
    float-to-int v3, v6

    .line 295
    .local v3, freqInt:I
    mul-float v7, v6, v12

    rem-float/2addr v7, v12

    float-to-int v2, v7

    .line 297
    .local v2, freqDec:I
    cmpl-float v7, v6, v9

    if-eqz v7, :cond_b9

    .line 299
    sget-object v7, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v7, v6, v8, v9}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    .line 301
    const v7, 0x7f070004

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/fm/RemoveChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 315
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v2           #freqDec:I
    .end local v3           #freqInt:I
    .end local v6           #tFreq:F
    :cond_b9
    iput-boolean v10, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackKey:Z

    .line 316
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->finish()V

    goto/16 :goto_25
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate savedinstancestate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, array:[Z
    if-eqz p1, :cond_25

    .line 93
    const-string v1, "selection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 95
    :cond_25
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->createScannedList([Z)V

    .line 96
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->setContentView(I)V

    .line 97
    new-instance v1, Lcom/sec/android/app/fm/RemoveChannelActivity$MyHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RemoveChannelActivity$MyHandler;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mHandler:Lcom/sec/android/app/fm/RemoveChannelActivity$MyHandler;

    .line 100
    const v1, 0x7f090001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mChannelListView:Landroid/widget/ListView;

    .line 101
    new-instance v1, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mChannelListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    const v1, 0x7f07001a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->setTitle(I)V

    .line 104
    const v1, 0x7f090007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->tblSelectAll:Landroid/widget/TableLayout;

    .line 106
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->cbSelectAll:Landroid/widget/CheckBox;

    .line 107
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->softKeyRemove:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->softKeyRemove:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->tblSelectAll:Landroid/widget/TableLayout;

    new-instance v2, Lcom/sec/android/app/fm/RemoveChannelActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RemoveChannelActivity$2;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget-object v1, Lcom/sec/android/app/fm/RemoveChannelActivity;->toast:Landroid/widget/Toast;

    if-nez v1, :cond_8f

    .line 132
    const/4 v1, 0x0

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/RemoveChannelActivity;->toast:Landroid/widget/Toast;

    .line 133
    :cond_8f
    sget-object v1, Lcom/sec/android/app/fm/RemoveChannelActivity;->toast:Landroid/widget/Toast;

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 134
    sget-object v1, Lcom/sec/android/app/fm/RemoveChannelActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mChannelListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/app/fm/RemoveChannelActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RemoveChannelActivity$3;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    invoke-direct {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->checkSelection()V

    .line 160
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->registerCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V

    .line 161
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mDialog:Landroid/app/Dialog;

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 371
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 372
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V

    .line 373
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 250
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackKey:Z

    .line 253
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 219
    sget-object v0, Lcom/sec/android/app/fm/RemoveChannelActivity;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_c

    .line 220
    sget-object v0, Lcom/sec/android/app/fm/RemoveChannelActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 221
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 342
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 346
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "RemoveChannelActivity :onSaveInstanceState"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Z

    .line 349
    .local v0, array:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 350
    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    aput-boolean v2, v0, v1

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 352
    :cond_2a
    const-string v2, "selection"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 354
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackKey:Z

    if-nez v0, :cond_c

    .line 361
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackKey:Z

    .line 364
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 365
    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->delete()V

    .line 215
    return-void
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity;->mBackKey:Z

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->finish()V

    .line 231
    return-void
.end method
