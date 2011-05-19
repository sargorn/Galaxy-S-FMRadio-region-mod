.class public Lcom/sec/android/app/fm/MainActivity$MyHandler;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 3110
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    .line 3112
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_85c

    .line 3522
    .end local p0
    .end local p1
    :cond_5
    :goto_5
    return-void

    .line 3114
    .restart local p0
    .restart local p1
    :sswitch_6
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2400(Lcom/sec/android/app/fm/MainActivity;)V

    goto :goto_5

    .line 3118
    :sswitch_c
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2500(Lcom/sec/android/app/fm/MainActivity;)V

    goto :goto_5

    .line 3122
    :sswitch_12
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v9, "hide volume bar"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3123
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    goto :goto_5

    .line 3126
    :sswitch_1f
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/16 v9, 0x18

    invoke-virtual {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->onMyKeyLongPress(I)V

    goto :goto_5

    .line 3130
    :sswitch_27
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    .line 3131
    .local v6, objects:[Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v2, v6, v8

    check-cast v2, Landroid/app/Dialog;

    .line 3132
    .local v2, dialog:Landroid/app/Dialog;
    const/4 v8, 0x1

    aget-object v7, v6, v8

    check-cast v7, Ljava/lang/Runnable;

    .line 3133
    .local v7, runnable:Ljava/lang/Runnable;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3134
    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 3135
    if-eqz v7, :cond_5

    .line 3136
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 3141
    .end local v2           #dialog:Landroid/app/Dialog;
    .end local v6           #objects:[Ljava/lang/Object;
    .end local v7           #runnable:Ljava/lang/Runnable;
    .restart local p0
    :sswitch_4a
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2600(Lcom/sec/android/app/fm/MainActivity;)V

    goto :goto_5

    .line 3146
    :sswitch_50
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_a5

    .line 3148
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v8, v8, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_95

    .line 3150
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v8, v8, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    const/high16 v9, -0x4080

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_80

    .line 3151
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v9, v9, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    .line 3164
    .end local p1
    :goto_79
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-wide/16 v9, -0x1

    iput-wide v9, v8, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    goto :goto_5

    .line 3153
    .restart local p1
    :cond_80
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sec/android/app/fm/data/Channel;

    iget v9, p1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    goto :goto_79

    .line 3156
    .restart local p1
    :cond_95
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v9, v9, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    long-to-float v9, v9

    const/high16 v10, 0x447a

    div-float/2addr v9, v10

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    goto :goto_79

    .line 3159
    :cond_a5
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v8, v8, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_bf

    .line 3160
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v9, v9, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    long-to-float v9, v9

    const/high16 v10, 0x447a

    div-float/2addr v9, v10

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    goto :goto_79

    .line 3162
    :cond_bf
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v9, v9, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    goto :goto_79

    .line 3169
    :sswitch_cd
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v9

    invoke-static {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 3170
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$1000(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 3171
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$900(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v9}, Lcom/sec/android/app/fm/MainActivity;->access$1000(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3172
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$900(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3173
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RDS text set :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$1000(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3179
    :sswitch_119
    :try_start_119
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v8

    if-eqz v8, :cond_16a

    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v9}, Lcom/sec/android/app/fm/MainActivity;->access$1100(Lcom/sec/android/app/fm/MainActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-ne v8, v9, :cond_16a

    .line 3181
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v8

    if-eqz v8, :cond_153

    .line 3182
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v9, 0x7f07000b

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 3185
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->cancelScan()Z

    .line 3189
    :cond_153
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->cancelSeek()V

    .line 3190
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_161} :catch_163

    goto/16 :goto_5

    .line 3210
    :catch_163
    move-exception v8

    move-object v3, v8

    .line 3212
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 3192
    .end local v3           #e:Ljava/lang/Exception;
    :cond_16a
    :try_start_16a
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v9}, Lcom/sec/android/app/fm/MainActivity;->access$500(Lcom/sec/android/app/fm/MainActivity;)Landroid/graphics/drawable/Drawable;
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_179} :catch_163

    move-result-object v9

    if-ne v8, v9, :cond_5

    .line 3197
    :try_start_17c
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/fm/MainActivity;->on()V

    .line 3198
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3200
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$1800(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3201
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v9, v9, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_1a0} :catch_1a2

    goto/16 :goto_5

    .line 3203
    :catch_1a2
    move-exception v8

    goto/16 :goto_5

    .line 3217
    :sswitch_1a5
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->access$2702(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 3220
    const/4 v5, 0x0

    .end local p1
    .local v5, i:I
    :goto_1ac
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1d5

    .line 3224
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v9}, Lcom/sec/android/app/fm/MainActivity;->access$2800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/fm/data/Channel;

    iget v9, p1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->getFavChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .line 3225
    .local v1, channel:Lcom/sec/android/app/fm/data/Channel;
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 3226
    const/4 v8, -0x1

    iput v8, v1, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3220
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ac

    .line 3229
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    :cond_1d5
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1e8

    .line 3230
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 3232
    :cond_1e8
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3233
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2900(Lcom/sec/android/app/fm/MainActivity;)V

    goto/16 :goto_5

    .line 3237
    .end local v5           #i:I
    .restart local p1
    :sswitch_1f8
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$3000(Lcom/sec/android/app/fm/MainActivity;)V

    goto/16 :goto_5

    .line 3242
    :sswitch_1ff
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_224

    .line 3243
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    if-nez v8, :cond_21b

    .line 3244
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const v10, 0x7f070037

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    .line 3245
    :cond_21b
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 3250
    :cond_224
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v9, v9, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/app/fm/MainActivity;->access$3100(Lcom/sec/android/app/fm/MainActivity;FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .restart local v1       #channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v1, :cond_5

    .line 3253
    const/4 v8, 0x1

    iput v8, v1, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3255
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3256
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$3300(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3257
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$3400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3258
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$3500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3262
    :try_start_282
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3263
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v9, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;F)V
    :try_end_293
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_282 .. :try_end_293} :catch_295

    goto/16 :goto_5

    .line 3264
    :catch_295
    move-exception v8

    move-object v3, v8

    .line 3265
    .local v3, e:Lcom/samsung/media/fmradio/FMPlayerException;
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 3270
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v3           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :sswitch_29e
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_2c3

    .line 3271
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    if-nez v8, :cond_2ba

    .line 3272
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const v10, 0x7f070037

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    .line 3273
    :cond_2ba
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 3277
    :cond_2c3
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v9, v9, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/app/fm/MainActivity;->access$3100(Lcom/sec/android/app/fm/MainActivity;FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .restart local v1       #channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v1, :cond_5

    .line 3280
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$3600(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3281
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$3700(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3282
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$3800(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3283
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$3900(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3285
    :try_start_31e
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3286
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v9, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;F)V
    :try_end_32f
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_31e .. :try_end_32f} :catch_331

    goto/16 :goto_5

    .line 3287
    :catch_331
    move-exception v8

    move-object v3, v8

    .line 3288
    .restart local v3       #e:Lcom/samsung/media/fmradio/FMPlayerException;
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 3292
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v3           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :sswitch_33a
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_35f

    .line 3293
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    if-nez v8, :cond_356

    .line 3294
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const v10, 0x7f070037

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    .line 3295
    :cond_356
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 3299
    :cond_35f
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v9, v9, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/app/fm/MainActivity;->access$3100(Lcom/sec/android/app/fm/MainActivity;FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .restart local v1       #channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v1, :cond_5

    .line 3302
    const/4 v8, 0x3

    iput v8, v1, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3303
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$4000(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3304
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$4100(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3305
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$4200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3306
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3309
    :try_start_3bd
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3310
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v9, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;F)V
    :try_end_3ce
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_3bd .. :try_end_3ce} :catch_3d0

    goto/16 :goto_5

    .line 3311
    :catch_3d0
    move-exception v8

    move-object v3, v8

    .line 3312
    .restart local v3       #e:Lcom/samsung/media/fmradio/FMPlayerException;
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 3316
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v3           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :sswitch_3d9
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_3fe

    .line 3317
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    if-nez v8, :cond_3f5

    .line 3318
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const v10, 0x7f070037

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    .line 3319
    :cond_3f5
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 3323
    :cond_3fe
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v9, v9, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/app/fm/MainActivity;->access$3100(Lcom/sec/android/app/fm/MainActivity;FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .restart local v1       #channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v1, :cond_5

    .line 3326
    const/4 v8, 0x4

    iput v8, v1, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3327
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3328
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$4500(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3329
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$4600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3330
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$4700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3333
    :try_start_45c
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3334
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v9, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;F)V
    :try_end_46d
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_45c .. :try_end_46d} :catch_46f

    goto/16 :goto_5

    .line 3335
    :catch_46f
    move-exception v8

    move-object v3, v8

    .line 3336
    .restart local v3       #e:Lcom/samsung/media/fmradio/FMPlayerException;
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 3341
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v3           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :sswitch_478
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_49d

    .line 3342
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    if-nez v8, :cond_494

    .line 3343
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const v10, 0x7f070037

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    .line 3344
    :cond_494
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 3348
    :cond_49d
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v9, v9, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/app/fm/MainActivity;->access$3100(Lcom/sec/android/app/fm/MainActivity;FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .restart local v1       #channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v1, :cond_5

    .line 3351
    const/4 v8, 0x5

    iput v8, v1, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3352
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$4800(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3353
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3354
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$5000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3355
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$5100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3358
    :try_start_4fb
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3359
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v9, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;F)V
    :try_end_50c
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_4fb .. :try_end_50c} :catch_50e

    goto/16 :goto_5

    .line 3360
    :catch_50e
    move-exception v8

    move-object v3, v8

    .line 3361
    .restart local v3       #e:Lcom/samsung/media/fmradio/FMPlayerException;
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 3366
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v3           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :sswitch_517
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_53c

    .line 3367
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    if-nez v8, :cond_533

    .line 3368
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const v10, 0x7f070037

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    .line 3369
    :cond_533
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 3373
    :cond_53c
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v9, v9, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/app/fm/MainActivity;->access$3100(Lcom/sec/android/app/fm/MainActivity;FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .restart local v1       #channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v1, :cond_5

    .line 3376
    const/4 v8, 0x6

    iput v8, v1, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3377
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$5200(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3378
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$5300(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3379
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3380
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$5500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3383
    :try_start_59a
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3384
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v9, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;F)V
    :try_end_5ab
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_59a .. :try_end_5ab} :catch_5ad

    goto/16 :goto_5

    .line 3385
    :catch_5ad
    move-exception v8

    move-object v3, v8

    .line 3386
    .restart local v3       #e:Lcom/samsung/media/fmradio/FMPlayerException;
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 3391
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v3           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :sswitch_5b6
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v8

    iget-boolean v8, v8, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v8, :cond_5c9

    .line 3392
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v9, "Worker thread is buys ignore it"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3396
    :cond_5c9
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_604

    .line 3397
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v9}, Lcom/sec/android/app/fm/MainActivity;->access$3300(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/app/fm/MainActivity;->access$5600(Lcom/sec/android/app/fm/MainActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 3398
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/fm/data/Channel;

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$3400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-direct {v9, v10}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3402
    :cond_604
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$3400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 3404
    .local v4, freq:F
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8, v4}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;F)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3408
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v8, v4, v9, v10}, Lcom/sec/android/app/fm/MainActivity;->onAndTune(FLandroid/view/View;I)V

    goto/16 :goto_5

    .line 3415
    .end local v4           #freq:F
    :sswitch_627
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v8

    iget-boolean v8, v8, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v8, :cond_63a

    .line 3416
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v9, "Worker thread is buys ignore it"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3419
    :cond_63a
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_675

    .line 3420
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v9}, Lcom/sec/android/app/fm/MainActivity;->access$3700(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$3600(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/app/fm/MainActivity;->access$5600(Lcom/sec/android/app/fm/MainActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 3421
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/fm/data/Channel;

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$3800(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-direct {v9, v10}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3424
    :cond_675
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$3800(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 3426
    .restart local v4       #freq:F
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8, v4}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;F)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3430
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v8, v4, v9, v10}, Lcom/sec/android/app/fm/MainActivity;->onAndTune(FLandroid/view/View;I)V

    goto/16 :goto_5

    .line 3435
    .end local v4           #freq:F
    :sswitch_698
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v8

    iget-boolean v8, v8, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v8, :cond_6ab

    .line 3436
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v9, "Worker thread is buys ignore it"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3439
    :cond_6ab
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_6e6

    .line 3440
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v9}, Lcom/sec/android/app/fm/MainActivity;->access$4100(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$4000(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/app/fm/MainActivity;->access$5600(Lcom/sec/android/app/fm/MainActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 3441
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/fm/data/Channel;

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$4200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-direct {v9, v10}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3444
    :cond_6e6
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$4200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 3446
    .restart local v4       #freq:F
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8, v4}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;F)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3450
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v8, v4, v9, v10}, Lcom/sec/android/app/fm/MainActivity;->onAndTune(FLandroid/view/View;I)V

    goto/16 :goto_5

    .line 3456
    .end local v4           #freq:F
    :sswitch_709
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v8

    iget-boolean v8, v8, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v8, :cond_71c

    .line 3457
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v9, "Worker thread is buys ignore it"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3460
    :cond_71c
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_757

    .line 3461
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v9}, Lcom/sec/android/app/fm/MainActivity;->access$4500(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/app/fm/MainActivity;->access$5600(Lcom/sec/android/app/fm/MainActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 3462
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/fm/data/Channel;

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$4600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-direct {v9, v10}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3465
    :cond_757
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$4600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 3467
    .restart local v4       #freq:F
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8, v4}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;F)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3471
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v8, v4, v9, v10}, Lcom/sec/android/app/fm/MainActivity;->onAndTune(FLandroid/view/View;I)V

    goto/16 :goto_5

    .line 3477
    .end local v4           #freq:F
    :sswitch_77a
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v8

    iget-boolean v8, v8, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v8, :cond_78d

    .line 3478
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v9, "Worker thread is buys ignore it"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3481
    :cond_78d
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_7c8

    .line 3482
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v9}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$4800(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/app/fm/MainActivity;->access$5600(Lcom/sec/android/app/fm/MainActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 3483
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/fm/data/Channel;

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$5000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-direct {v9, v10}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3486
    :cond_7c8
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$5000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 3488
    .restart local v4       #freq:F
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8, v4}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;F)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3492
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v8, v4, v9, v10}, Lcom/sec/android/app/fm/MainActivity;->onAndTune(FLandroid/view/View;I)V

    goto/16 :goto_5

    .line 3498
    .end local v4           #freq:F
    :sswitch_7eb
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v8

    iget-boolean v8, v8, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v8, :cond_7fe

    .line 3499
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v9, "Worker thread is buys ignore it"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3502
    :cond_7fe
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v8

    if-eqz v8, :cond_839

    .line 3503
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v9}, Lcom/sec/android/app/fm/MainActivity;->access$5300(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$5200(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/app/fm/MainActivity;->access$5600(Lcom/sec/android/app/fm/MainActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 3504
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$2800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/fm/data/Channel;

    iget-object v10, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v10}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-direct {v9, v10}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3507
    :cond_839
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 3509
    .restart local v4       #freq:F
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8, v4}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;F)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3513
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v8, v4, v9, v10}, Lcom/sec/android/app/fm/MainActivity;->onAndTune(FLandroid/view/View;I)V

    goto/16 :goto_5

    .line 3112
    :sswitch_data_85c
    .sparse-switch
        0x1 -> :sswitch_6
        0x3 -> :sswitch_c
        0x5 -> :sswitch_12
        0x6 -> :sswitch_1f
        0x7 -> :sswitch_27
        0x8 -> :sswitch_4a
        0x9 -> :sswitch_50
        0xa -> :sswitch_cd
        0xb -> :sswitch_119
        0x65 -> :sswitch_1a5
        0x66 -> :sswitch_1f8
        0xc9 -> :sswitch_1ff
        0xca -> :sswitch_29e
        0xcb -> :sswitch_33a
        0xcc -> :sswitch_3d9
        0xcd -> :sswitch_478
        0xce -> :sswitch_517
        0x12d -> :sswitch_5b6
        0x12e -> :sswitch_627
        0x12f -> :sswitch_698
        0x130 -> :sswitch_709
        0x131 -> :sswitch_77a
        0x132 -> :sswitch_7eb
    .end sparse-switch
.end method
