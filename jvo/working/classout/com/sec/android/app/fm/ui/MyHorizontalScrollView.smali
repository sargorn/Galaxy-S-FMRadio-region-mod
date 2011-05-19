.class public Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "MyHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$1;,
        Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$MyHandler;,
        Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;
    }
.end annotation


# static fields
.field static IMG_PIX_PER_FREQ:I


# instance fields
.field private japanImage:Z

.field private mCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

.field public mCurrentFreq:F

.field private mDown:Z

.field private mHandler:Landroid/os/Handler;

.field private final mTuneIt:I

.field n:I

.field private noScrolled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->IMG_PIX_PER_FREQ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mTuneIt:I

    .line 36
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    iput v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->n:I

    .line 45
    new-instance v0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$MyHandler;-><init>(Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$1;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mHandler:Landroid/os/Handler;

    .line 46
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "MyHorizontalScrollView created 1"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mTuneIt:I

    .line 36
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    iput v1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    .line 222
    iput v4, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->n:I

    .line 56
    new-instance v1, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$MyHandler;-><init>(Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$1;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mHandler:Landroid/os/Handler;

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x320

    if-eq v1, v2, :cond_38

    .line 60
    sput v3, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->IMG_PIX_PER_FREQ:I

    .line 61
    :cond_38
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_58

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x1e0

    if-eq v1, v2, :cond_58

    .line 63
    sput v3, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->IMG_PIX_PER_FREQ:I

    .line 65
    :cond_58
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "SettingsPreference"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "region"

    const-string v3, "Europe"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, currentReg:Ljava/lang/String;
    const-string v1, "Japan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 69
    const/high16 v1, 0x4298

    iput v1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    .line 70
    :cond_74
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "MyHorizontalScrollView created 2"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;)Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    return-object v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 240
    if-eqz p1, :cond_5a

    .line 241
    iget v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->n:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->scrollTo(II)V

    .line 247
    :cond_b
    :goto_b
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 248
    return-void

    .line 242
    :cond_5a
    iget-boolean v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->japanImage:Z

    if-eqz v0, :cond_b

    .line 243
    iput-boolean v1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->japanImage:Z

    .line 244
    iget v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->n:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->scrollTo(II)V

    goto :goto_b
.end method

.method protected onScrollChanged(IIII)V
    .registers 12
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/16 v6, 0x64

    const/high16 v5, 0x4120

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 78
    sget v3, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->IMG_PIX_PER_FREQ:I

    div-int v3, p1, v3

    add-int/lit16 v3, v3, 0x36b

    int-to-float v3, v3

    div-float v1, v3, v5

    .line 80
    .local v1, freq1:F
    iget-boolean v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->noScrolled:Z

    if-eqz v3, :cond_2f

    .line 82
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->noScrolled:Z

    .line 83
    sget v3, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->IMG_PIX_PER_FREQ:I

    div-int v3, p1, v3

    sget v4, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v3, v5

    .line 92
    .local v0, freq:F
    iput v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    .line 93
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    if-eqz v3, :cond_2e

    .line 94
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    invoke-interface {v3, v0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;->onScrolling(F)V

    .line 124
    .end local v0           #freq:F
    :cond_2e
    :goto_2e
    return-void

    .line 97
    :cond_2f
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    if-eqz v3, :cond_2e

    .line 99
    sget v3, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->IMG_PIX_PER_FREQ:I

    div-int v3, p1, v3

    sget v4, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v3, v5

    .line 112
    .restart local v0       #freq:F
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    invoke-interface {v3, v0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;->onScrolling(F)V

    .line 113
    iput v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    .line 118
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 119
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    :cond_53
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 122
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "arg0"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x4120

    const/4 v5, 0x1

    .line 131
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_14

    .line 132
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    .line 134
    :cond_14
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v3, :cond_25

    .line 135
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v4, "Worker Thread is busy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    move v3, v5

    .line 166
    :goto_24
    return v3

    .line 138
    :cond_25
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 143
    .local v0, b:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_33

    .line 144
    iput-boolean v5, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mDown:Z

    :cond_31
    :goto_31
    move v3, v0

    .line 166
    goto :goto_24

    .line 145
    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_67

    .line 147
    iget-boolean v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mDown:Z

    if-eqz v3, :cond_64

    .line 148
    const/16 v2, 0xf0

    .line 150
    .local v2, pixValue:I
    sget v3, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->IMG_PIX_PER_FREQ:I

    if-ne v3, v4, :cond_45

    .line 151
    const/16 v2, 0x78

    .line 152
    :cond_45
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->getScrollX()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->IMG_PIX_PER_FREQ:I

    div-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v3, v6

    .line 156
    .local v1, freq:F
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    if-eqz v3, :cond_64

    .line 157
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    invoke-interface {v3, v1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;->onTouched(F)V

    .line 159
    .end local v1           #freq:F
    .end local v2           #pixValue:I
    :cond_64
    iput-boolean v7, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mDown:Z

    goto :goto_31

    .line 161
    :cond_67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v4, :cond_74

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_31

    .line 164
    :cond_74
    iput-boolean v7, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mDown:Z

    goto :goto_31
.end method

.method public removeCallback()V
    .registers 2

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    .line 279
    return-void
.end method

.method public scrollBy(II)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 287
    return-void
.end method

.method public scrollTo(II)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 293
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 295
    return-void
.end method

.method public setCallback(Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    .line 272
    return-void
.end method

.method public setFrequency(F)V
    .registers 6
    .parameter "freqMHz"

    .prologue
    const/high16 v3, 0x4120

    .line 182
    iget v1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_9

    .line 188
    :goto_8
    return-void

    .line 185
    :cond_9
    mul-float v1, p1, v3

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->IMG_PIX_PER_FREQ:I

    mul-int v0, v1, v2

    .line 186
    .local v0, n:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->scrollTo(II)V

    goto :goto_8
.end method

.method public setFrequencyAfterTune(F)V
    .registers 6
    .parameter "freqMHz"

    .prologue
    const/high16 v3, 0x4120

    .line 215
    iget v1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_9

    .line 221
    :goto_8
    return-void

    .line 218
    :cond_9
    mul-float v1, p1, v3

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->IMG_PIX_PER_FREQ:I

    mul-int v0, v1, v2

    .line 219
    .local v0, n:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->noScrolled:Z

    .line 220
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->scrollTo(II)V

    goto :goto_8
.end method

.method public setImage(Ljava/lang/String;)V
    .registers 5
    .parameter "region"

    .prologue
    .line 337
    const v1, 0x7f090014

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 338
    .local v0, imgView:Landroid/widget/ImageView;
    const-string v1, "Japan"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 339
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->japanImage:Z

    .line 340
    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "Japan image is set"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 347
    :goto_21
    return-void

    .line 344
    :cond_22
    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "Europe image is set"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public setInitialFreq(F)V
    .registers 6
    .parameter "freqMHz"

    .prologue
    const/high16 v3, 0x4120

    .line 228
    mul-float v1, p1, v3

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->IMG_PIX_PER_FREQ:I

    mul-int v0, v1, v2

    .line 229
    .local v0, n:I
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_16

    .line 232
    iput p1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    .line 234
    :cond_16
    iput v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->n:I

    .line 236
    return-void
.end method

.method public setInitialFreq1(F)V
    .registers 7
    .parameter "freqMHz"

    .prologue
    const/high16 v4, 0x4120

    .line 251
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freqMhz:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 252
    mul-float v1, p1, v4

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->IMG_PIX_PER_FREQ:I

    mul-int v0, v1, v2

    .line 256
    .local v0, n:I
    iput p1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->noScrolled:Z

    .line 260
    iput v0, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->n:I

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    if-eqz v1, :cond_36

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    invoke-interface {v1, p1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;->onScrolling(F)V

    .line 264
    :cond_36
    return-void
.end method
