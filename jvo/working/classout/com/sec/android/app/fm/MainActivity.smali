.class public Lcom/sec/android/app/fm/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/MainActivity$MyHandler;,
        Lcom/sec/android/app/fm/MainActivity$Callback;
    }
.end annotation


# static fields
.field public static BASE_FREQ:F

.field public static MAX_FREQ:F

.field public static _instance:Lcom/sec/android/app/fm/MainActivity;

.field static autoOffToast:Landroid/widget/Toast;

.field public static mEarphoneToast:Landroid/widget/Toast;

.field static toastTvout:Landroid/widget/Toast;


# instance fields
.field count:I

.field firstScannedChannel:F

.field private img1DelIcon:Landroid/widget/ImageView;

.field private img2DelIcon:Landroid/widget/ImageView;

.field private img3DelIcon:Landroid/widget/ImageView;

.field private img4DelIcon:Landroid/widget/ImageView;

.field private img5DelIcon:Landroid/widget/ImageView;

.field private img6DelIcon:Landroid/widget/ImageView;

.field private layout1A:Landroid/view/ViewGroup;

.field private layout1B:Landroid/view/ViewGroup;

.field private layout2A:Landroid/view/ViewGroup;

.field private layout2B:Landroid/view/ViewGroup;

.field private layout3A:Landroid/view/ViewGroup;

.field private layout3B:Landroid/view/ViewGroup;

.field private layout4A:Landroid/view/ViewGroup;

.field private layout4B:Landroid/view/ViewGroup;

.field private layout5A:Landroid/view/ViewGroup;

.field private layout5B:Landroid/view/ViewGroup;

.field private layout6A:Landroid/view/ViewGroup;

.field private layout6B:Landroid/view/ViewGroup;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private mCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/MainActivity$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackRunnable:Ljava/lang/Runnable;

.field private mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

.field public mChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/data/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroid/view/View$OnClickListener;

.field mColor1:I

.field mColor3:I

.field mColor65:I

.field private mDrawableAFOff:Landroid/graphics/drawable/Drawable;

.field private mDrawableAFOn:Landroid/graphics/drawable/Drawable;

.field private mDrawablePause:Landroid/graphics/drawable/Drawable;

.field private mDrawablePlay:Landroid/graphics/drawable/Drawable;

.field private mDrawableSpeakerOff:Landroid/graphics/drawable/Drawable;

.field private mDrawableSpeakerOn:Landroid/graphics/drawable/Drawable;

.field private mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

.field mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

.field public mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

.field private mHideBubble:Ljava/lang/Runnable;

.field private mImgAf:Landroid/view/ViewGroup;

.field private mImgControlMinus:Landroid/widget/ImageView;

.field private mImgControlNext:Landroid/widget/ImageView;

.field private mImgControlPlay:Landroid/widget/ImageView;

.field private mImgControlPlus:Landroid/widget/ImageView;

.field private mImgControlPrev:Landroid/widget/ImageView;

.field private mImgEarphone:Landroid/view/ViewGroup;

.field private mImgFreq1:Landroid/widget/ImageView;

.field private mImgFreq1A:Landroid/widget/ImageView;

.field private mImgFreq2:Landroid/widget/ImageView;

.field private mImgFreq2A:Landroid/widget/ImageView;

.field private mImgFreq3:Landroid/widget/ImageView;

.field private mImgFreq3A:Landroid/widget/ImageView;

.field private mImgFreq4A:Landroid/widget/ImageView;

.field private mImgFreqBar:Landroid/widget/ImageView;

.field private mInitialAceess:Z

.field private mIsBubbleRunable:Z

.field private mIsUpdateUI:Z

.field private mLayoutThreeDigit:Landroid/view/ViewGroup;

.field private mLayoutTwoDigit:Landroid/view/ViewGroup;

.field private mLongKey:Z

.field private mMyApps:Z

.field mNoChannelToast:Landroid/widget/Toast;

.field mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field public mProgressbarParent:Landroid/view/ViewGroup;

.field private mRDSChName:Ljava/lang/String;

.field private mRDSText:Ljava/lang/String;

.field private mScanFinished:Z

.field private mScanFinishedDialog:Landroid/app/AlertDialog;

.field private mScrollerCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

.field private mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field public mSeekBarParent:Landroid/view/ViewGroup;

.field private mSelFavFreq:[Ljava/lang/Object;

.field private mTTSConfirmDialog:Landroid/app/AlertDialog;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTxtRadioStatusChName:Landroid/widget/TextView;

.field private mTxtRadioStatusText:Landroid/widget/TextView;

.field private mVolumeImg:Landroid/widget/ImageView;

.field mVolumeRec:Landroid/content/BroadcastReceiver;

.field private mWillRemove:Z

.field private mWillRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/data/Channel;",
            ">;"
        }
    .end annotation
.end field

.field mWillTune:J

.field private mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

.field private mbtnAllChannel:Landroid/widget/Button;

.field private mbtnCanncel:Landroid/widget/Button;

.field private mbtnDone:Landroid/widget/Button;

.field private mbtnScan:Landroid/widget/Button;

.field private menuPrepareFlag:Z

.field onToast:Landroid/widget/Toast;

.field private toast:Landroid/widget/Toast;

.field private toastAirplane:Landroid/widget/Toast;

.field private toastBatteryLow:Landroid/widget/Toast;

.field private toastError:Landroid/widget/Toast;

.field private toastNoFav:Landroid/widget/Toast;

.field toastPlaying:Landroid/widget/Toast;

.field private txt1Freq:Landroid/widget/TextView;

.field private txt1FreqName:Landroid/widget/TextView;

.field private txt2Freq:Landroid/widget/TextView;

.field private txt2FreqName:Landroid/widget/TextView;

.field private txt3Freq:Landroid/widget/TextView;

.field private txt3FreqName:Landroid/widget/TextView;

.field private txt4Freq:Landroid/widget/TextView;

.field private txt4FreqName:Landroid/widget/TextView;

.field private txt5Freq:Landroid/widget/TextView;

.field private txt5FreqName:Landroid/widget/TextView;

.field private txt6Freq:Landroid/widget/TextView;

.field private txt6FreqName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const/high16 v0, 0x42af

    sput v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 148
    const/high16 v0, 0x42d8

    sput v0, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    .line 2780
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;

    .line 147
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$1;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeRec:Landroid/content/BroadcastReceiver;

    .line 177
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$2;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 228
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$3;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScrollerCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    .line 374
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$4;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 618
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastPlaying:Landroid/widget/Toast;

    .line 834
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$5;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    .line 1238
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$6;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHideBubble:Ljava/lang/Runnable;

    .line 1844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mLongKey:Z

    .line 2776
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    .line 2777
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastError:Landroid/widget/Toast;

    .line 2778
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    .line 2779
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    .line 3061
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$13;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackRunnable:Ljava/lang/Runnable;

    .line 3528
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreqBar:Landroid/widget/ImageView;

    .line 3540
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mImgAf:Landroid/view/ViewGroup;

    .line 3541
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableSpeakerOn:Landroid/graphics/drawable/Drawable;

    .line 3542
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableSpeakerOff:Landroid/graphics/drawable/Drawable;

    .line 3543
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableAFOn:Landroid/graphics/drawable/Drawable;

    .line 3544
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableAFOff:Landroid/graphics/drawable/Drawable;

    .line 3545
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mImgEarphone:Landroid/view/ViewGroup;

    .line 3546
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPrev:Landroid/widget/ImageView;

    .line 3547
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlMinus:Landroid/widget/ImageView;

    .line 3548
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlay:Landroid/widget/ImageView;

    .line 3549
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlus:Landroid/widget/ImageView;

    .line 3550
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlNext:Landroid/widget/ImageView;

    .line 3551
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawablePlay:Landroid/graphics/drawable/Drawable;

    .line 3552
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawablePause:Landroid/graphics/drawable/Drawable;

    .line 3553
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    .line 3554
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    .line 3555
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeImg:Landroid/widget/ImageView;

    .line 3557
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->img1DelIcon:Landroid/widget/ImageView;

    .line 3558
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->img2DelIcon:Landroid/widget/ImageView;

    .line 3559
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->img3DelIcon:Landroid/widget/ImageView;

    .line 3560
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->img4DelIcon:Landroid/widget/ImageView;

    .line 3561
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->img5DelIcon:Landroid/widget/ImageView;

    .line 3562
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->img6DelIcon:Landroid/widget/ImageView;

    .line 3563
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    .line 3564
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    .line 3565
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    .line 3566
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout2B:Landroid/view/ViewGroup;

    .line 3567
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    .line 3568
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout3B:Landroid/view/ViewGroup;

    .line 3569
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    .line 3570
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout4B:Landroid/view/ViewGroup;

    .line 3571
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    .line 3572
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout5B:Landroid/view/ViewGroup;

    .line 3573
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    .line 3574
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout6B:Landroid/view/ViewGroup;

    .line 3575
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->txt1Freq:Landroid/widget/TextView;

    .line 3576
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->txt1FreqName:Landroid/widget/TextView;

    .line 3577
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->txt2Freq:Landroid/widget/TextView;

    .line 3578
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->txt2FreqName:Landroid/widget/TextView;

    .line 3579
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->txt3Freq:Landroid/widget/TextView;

    .line 3580
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->txt3FreqName:Landroid/widget/TextView;

    .line 3581
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->txt4Freq:Landroid/widget/TextView;

    .line 3582
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->txt4FreqName:Landroid/widget/TextView;

    .line 3583
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->txt5Freq:Landroid/widget/TextView;

    .line 3584
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->txt5FreqName:Landroid/widget/TextView;

    .line 3585
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->txt6Freq:Landroid/widget/TextView;

    .line 3586
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->txt6FreqName:Landroid/widget/TextView;

    .line 3587
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    .line 3588
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 3589
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    .line 3590
    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/fm/MainActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawablePause:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/fm/MainActivity;F)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->saveCurrentHScrollFreq()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/fm/MainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/fm/MainActivity;Lcom/sec/android/app/fm/data/Channel;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->addChannel(Lcom/sec/android/app/fm/data/Channel;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/fm/MainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsUpdateUI:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/fm/MainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/fm/MainActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->startAllChannelActivity()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->resetFavLayout()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->handleAFClick()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->handleEarPhoneClick()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->checkInitialAccess()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/fm/MainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->invisibleDelIcons()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelClicked()V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/fm/MainActivity;FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/fm/MainActivity;->addFavChannel(FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt1Freq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt1FreqName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2B:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt2Freq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt2FreqName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3B:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt3Freq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt3FreqName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4B:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt4Freq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt4FreqName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5B:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/MainActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawablePlay:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt5Freq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt5FreqName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6B:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt6Freq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt6FreqName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sec/android/app/fm/MainActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/fm/MainActivity;->toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/sec/android/app/fm/MainActivity;F)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->isSameFreq(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/fm/MainActivity;F)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method private addChannel(Lcom/sec/android/app/fm/data/Channel;)V
    .registers 5
    .parameter "channel"

    .prologue
    .line 720
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 721
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v1, :cond_28

    .line 724
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 725
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity$Callback;->notifyUI()V

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 728
    .end local v0           #i:I
    :cond_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_31

    .line 729
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 730
    return-void

    .line 728
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private addFavChannel(FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;
    .registers 13
    .parameter "freq"
    .parameter "chanName"
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x7

    const/4 v6, 0x1

    .line 765
    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_c

    .line 766
    sget p1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 768
    :cond_c
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 770
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v0, :cond_20

    .line 771
    new-instance v0, Lcom/sec/android/app/fm/data/Channel;

    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/fm/data/Channel;-><init>(FLjava/lang/String;)V

    .line 772
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    iput-boolean v6, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 773
    iput p3, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 774
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->addChannel(Lcom/sec/android/app/fm/data/Channel;)V

    move-object v2, v0

    .line 795
    :goto_1f
    return-object v2

    .line 778
    :cond_20
    iget-boolean v2, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-nez v2, :cond_41

    .line 779
    iput-boolean v6, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 781
    iget-object v2, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    if-eqz v2, :cond_34

    iget-object v2, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 782
    :cond_34
    iput-object p2, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 783
    :cond_36
    iput p3, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 784
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    move-object v2, v0

    .line 785
    goto :goto_1f

    .line 788
    :cond_41
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    .line 790
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 791
    .local v1, msg:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 792
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

    aput-object v4, v2, v3

    aput-object v8, v2, v6

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 793
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 794
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object v2, v8

    .line 795
    goto :goto_1f
.end method

.method private cancelClicked()V
    .registers 2

    .prologue
    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 693
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->invisibleDelIcons()V

    .line 694
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V

    .line 696
    return-void
.end method

.method private changeColor(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/fm/data/Channel;F)V
    .registers 6
    .parameter "txtFreq"
    .parameter "txtFreqName"
    .parameter "channel"
    .parameter "freq"

    .prologue
    .line 2142
    iget v0, p3, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_11

    .line 2143
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mColor3:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2144
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mColor3:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2150
    :goto_10
    return-void

    .line 2147
    :cond_11
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mColor1:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2148
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mColor3:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_10
.end method

.method private checkInitialAccess()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const-string v1, "test"

    .line 1553
    const-string v0, "checkInitialAccess"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1554
    const-string v0, "test"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1555
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1558
    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->startScan(Z)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1560
    :try_start_1a
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1562
    const v0, 0x7f07003a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1564
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2f} :catch_3c

    .line 1569
    :cond_2f
    :goto_2f
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z

    .line 1572
    :cond_31
    :try_start_31
    const-string v0, "test"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1573
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3b} :catch_41

    .line 1579
    :cond_3b
    :goto_3b
    return-void

    .line 1566
    :catch_3c
    move-exception v0

    .line 1567
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 1575
    :catch_41
    move-exception v0

    .line 1576
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public static checkSettingAlarm(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    .registers 7
    .parameter "mPlayer"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 704
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z
    :try_end_4
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_4} :catch_8

    move-result v2

    if-nez v2, :cond_c

    .line 717
    :cond_7
    :goto_7
    return-void

    .line 706
    :catch_8
    move-exception v0

    .line 707
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    .line 709
    .end local v0           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_c
    const-string v2, "SettingsPreference"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "autoonoff"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 714
    .local v1, valAutoOff:I
    if-eqz v1, :cond_7

    .line 716
    invoke-static {v1, p1}, Lcom/sec/android/app/fm/MainActivity;->setOffAlarm(ILandroid/content/Context;)V

    goto :goto_7
.end method

.method private getFavFreq(Landroid/view/View;)[Ljava/lang/Object;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1941
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_12e

    .line 1974
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x0

    aput-object v1, v0, v2

    :goto_18
    return-object v0

    .line 1944
    :sswitch_19
    new-array v1, v6, [Ljava/lang/Object;

    const v0, 0x7f090027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    aput-object v0, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    move-object v0, v1

    goto :goto_18

    .line 1949
    :sswitch_46
    new-array v1, v6, [Ljava/lang/Object;

    const v0, 0x7f09002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2B:Landroid/view/ViewGroup;

    aput-object v0, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    move-object v0, v1

    goto :goto_18

    .line 1954
    :sswitch_73
    new-array v1, v6, [Ljava/lang/Object;

    const v0, 0x7f090033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3B:Landroid/view/ViewGroup;

    aput-object v0, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    move-object v0, v1

    goto/16 :goto_18

    .line 1959
    :sswitch_a1
    new-array v1, v6, [Ljava/lang/Object;

    const v0, 0x7f090039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4B:Landroid/view/ViewGroup;

    aput-object v0, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    move-object v0, v1

    goto/16 :goto_18

    .line 1964
    :sswitch_cf
    new-array v1, v6, [Ljava/lang/Object;

    const v0, 0x7f09003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5B:Landroid/view/ViewGroup;

    aput-object v0, v1, v3

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    move-object v0, v1

    goto/16 :goto_18

    .line 1969
    :sswitch_fe
    new-array v1, v6, [Ljava/lang/Object;

    const v0, 0x7f090045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6B:Landroid/view/ViewGroup;

    aput-object v0, v1, v3

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    move-object v0, v1

    goto/16 :goto_18

    .line 1941
    nop

    :sswitch_data_12e
    .sparse-switch
        0x7f090026 -> :sswitch_19
        0x7f09002c -> :sswitch_46
        0x7f090032 -> :sswitch_73
        0x7f090038 -> :sswitch_a1
        0x7f09003e -> :sswitch_cf
        0x7f090044 -> :sswitch_fe
    .end sparse-switch
.end method

.method private getFreshLayouts(I)[Ljava/lang/Object;
    .registers 6
    .parameter "pos"

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1979
    packed-switch p1, :pswitch_data_4a

    .line 1994
    const/4 v0, 0x0

    :goto_7
    return-object v0

    .line 1981
    :pswitch_8
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    aput-object v1, v0, v3

    goto :goto_7

    .line 1983
    :pswitch_13
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout2B:Landroid/view/ViewGroup;

    aput-object v1, v0, v3

    goto :goto_7

    .line 1985
    :pswitch_1e
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout3B:Landroid/view/ViewGroup;

    aput-object v1, v0, v3

    goto :goto_7

    .line 1987
    :pswitch_29
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout4B:Landroid/view/ViewGroup;

    aput-object v1, v0, v3

    goto :goto_7

    .line 1989
    :pswitch_34
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout5B:Landroid/view/ViewGroup;

    aput-object v1, v0, v3

    goto :goto_7

    .line 1991
    :pswitch_3f
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->layout6B:Landroid/view/ViewGroup;

    aput-object v1, v0, v3

    goto :goto_7

    .line 1979
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_13
        :pswitch_1e
        :pswitch_29
        :pswitch_34
        :pswitch_3f
    .end packed-switch
.end method

.method private handleAFClick()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "af"

    .line 800
    const-string v1, "SettingsPreference"

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 802
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mImgAf:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableAFOff:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_34

    .line 805
    const-string v1, "af"

    const/4 v1, 0x1

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 806
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mImgAf:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableAFOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    const-string v1, "[AF click ]AF on"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 814
    :cond_29
    :goto_29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 815
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 816
    return-void

    .line 808
    :cond_34
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mImgAf:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableAFOn:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_29

    .line 810
    const-string v1, "af"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mImgAf:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableAFOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 812
    const-string v1, "[AF click ]AF off"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_29
.end method

.method private handleEarPhoneClick()V
    .registers 3

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgEarphone:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableSpeakerOff:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-nez v0, :cond_25

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgEarphone:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableSpeakerOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 823
    const-string v0, "[speaker click ]speaker on"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 829
    :cond_24
    :goto_24
    return-void

    .line 824
    :cond_25
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgEarphone:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableSpeakerOn:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgEarphone:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableSpeakerOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 827
    const-string v0, "[speaker click ]speaker off"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_24
.end method

.method private hideSeekbar()V
    .registers 5

    .prologue
    const/4 v2, 0x5

    .line 1805
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 1807
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1808
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1809
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1810
    return-void
.end method

.method private initFavChannelUI()V
    .registers 3

    .prologue
    .line 2273
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img1DelIcon:Landroid/widget/ImageView;

    .line 2274
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img2DelIcon:Landroid/widget/ImageView;

    .line 2275
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img3DelIcon:Landroid/widget/ImageView;

    .line 2276
    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img4DelIcon:Landroid/widget/ImageView;

    .line 2277
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img5DelIcon:Landroid/widget/ImageView;

    .line 2278
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img6DelIcon:Landroid/widget/ImageView;

    .line 2280
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    .line 2281
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    .line 2282
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    .line 2283
    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2B:Landroid/view/ViewGroup;

    .line 2284
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    .line 2285
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3B:Landroid/view/ViewGroup;

    .line 2286
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    .line 2287
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4B:Landroid/view/ViewGroup;

    .line 2288
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    .line 2289
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5B:Landroid/view/ViewGroup;

    .line 2290
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    .line 2291
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6B:Landroid/view/ViewGroup;

    .line 2294
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2295
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2296
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2297
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2298
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2299
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2B:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2300
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2301
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2302
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3B:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2303
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2304
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2305
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4B:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2306
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2307
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2308
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5B:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2309
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2310
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2311
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6B:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2313
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2316
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 2317
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 2318
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 2319
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 2320
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 2321
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 2323
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt1Freq:Landroid/widget/TextView;

    .line 2324
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt1FreqName:Landroid/widget/TextView;

    .line 2325
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt2Freq:Landroid/widget/TextView;

    .line 2326
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt2FreqName:Landroid/widget/TextView;

    .line 2327
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt3Freq:Landroid/widget/TextView;

    .line 2328
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt3FreqName:Landroid/widget/TextView;

    .line 2329
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt4Freq:Landroid/widget/TextView;

    .line 2330
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt4FreqName:Landroid/widget/TextView;

    .line 2331
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt5Freq:Landroid/widget/TextView;

    .line 2332
    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt5FreqName:Landroid/widget/TextView;

    .line 2333
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt6Freq:Landroid/widget/TextView;

    .line 2334
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt6FreqName:Landroid/widget/TextView;

    .line 2337
    return-void
.end method

.method private invisibleDelIcons()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 2623
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img1DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2624
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img2DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2625
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img3DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2626
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img4DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2627
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img5DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2628
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img6DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2629
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->showNormalSoftkeys()V

    .line 2630
    return-void
.end method

.method private isSameFreq(F)Z
    .registers 12
    .parameter "freq"

    .prologue
    const/4 v9, 0x1

    const/high16 v4, 0x4120

    const/4 v8, 0x0

    .line 622
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v3, v3, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    cmpl-float v3, p1, v3

    if-nez v3, :cond_4e

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 623
    float-to-int v2, p1

    .line 624
    .local v2, freqInt:I
    mul-float v3, p1, v4

    rem-float/2addr v3, v4

    float-to-int v1, v3

    .line 626
    .local v1, freqDec:I
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->toastPlaying:Landroid/widget/Toast;

    if-nez v3, :cond_25

    .line 627
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->toastPlaying:Landroid/widget/Toast;

    .line 629
    :cond_25
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->toastPlaying:Landroid/widget/Toast;

    const v4, 0x7f07000a

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->toastPlaying:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_47
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_4 .. :try_end_47} :catch_49

    move v3, v9

    .line 637
    .end local v1           #freqDec:I
    .end local v2           #freqInt:I
    :goto_48
    return v3

    .line 634
    :catch_49
    move-exception v3

    move-object v0, v3

    .line 635
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    .end local v0           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_4e
    move v3, v8

    .line 637
    goto :goto_48
.end method

.method private myOnCreate()V
    .registers 6

    .prologue
    const v4, 0x7f020002

    const v3, 0x7f020001

    const/4 v2, 0x0

    .line 1582
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setContentView(I)V

    .line 1585
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mColor1:I

    .line 1586
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mColor3:I

    .line 1587
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mColor65:I

    .line 1588
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    .line 1589
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getRegion()V

    .line 1591
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setSmoothScrollingEnabled(Z)V

    .line 1593
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mScrollerCallback:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setCallback(Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;)V

    .line 1596
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq1:Landroid/widget/ImageView;

    .line 1597
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq2:Landroid/widget/ImageView;

    .line 1598
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq3:Landroid/widget/ImageView;

    .line 1599
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq1A:Landroid/widget/ImageView;

    .line 1600
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq2A:Landroid/widget/ImageView;

    .line 1601
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq3A:Landroid/widget/ImageView;

    .line 1602
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq4A:Landroid/widget/ImageView;

    .line 1603
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mLayoutTwoDigit:Landroid/view/ViewGroup;

    .line 1604
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mLayoutThreeDigit:Landroid/view/ViewGroup;

    .line 1606
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreqBar:Landroid/widget/ImageView;

    .line 1608
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgAf:Landroid/view/ViewGroup;

    .line 1609
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableSpeakerOn:Landroid/graphics/drawable/Drawable;

    .line 1610
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableSpeakerOff:Landroid/graphics/drawable/Drawable;

    .line 1612
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableAFOn:Landroid/graphics/drawable/Drawable;

    .line 1613
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableAFOff:Landroid/graphics/drawable/Drawable;

    .line 1615
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgEarphone:Landroid/view/ViewGroup;

    .line 1616
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgAf:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1617
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgEarphone:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1620
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 1621
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    .line 1622
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    .line 1628
    const-string v0, "myOnCreate ------ -mSeekBar.setMax Start"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1629
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 1630
    const-string v0, "myOnCreate ------ -mSeekBar.setMax next"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 1633
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 1634
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 1635
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 1638
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPrev:Landroid/widget/ImageView;

    .line 1639
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlMinus:Landroid/widget/ImageView;

    .line 1640
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlay:Landroid/widget/ImageView;

    .line 1641
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlus:Landroid/widget/ImageView;

    .line 1642
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlNext:Landroid/widget/ImageView;

    .line 1643
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawablePause:Landroid/graphics/drawable/Drawable;

    .line 1645
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawablePlay:Landroid/graphics/drawable/Drawable;

    .line 1647
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    .line 1648
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    .line 1650
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeImg:Landroid/widget/ImageView;

    .line 1652
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPrev:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1653
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlMinus:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1654
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1655
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlus:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1656
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlNext:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1658
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->initFavChannelUI()V

    .line 1661
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnAllChannel:Landroid/widget/Button;

    .line 1662
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnScan:Landroid/widget/Button;

    .line 1663
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnDone:Landroid/widget/Button;

    .line 1664
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnCanncel:Landroid/widget/Button;

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnAllChannel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1667
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnScan:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1668
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnDone:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1669
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnCanncel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1674
    :try_start_244
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_288

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_288

    .line 1675
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v0

    .line 1676
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_282

    .line 1677
    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 1678
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setInitialFreq(F)V

    .line 1681
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setFreqOnImage(F)V

    .line 1682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting initial freq - on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_282
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_244 .. :try_end_282} :catch_2be

    .line 1699
    :cond_282
    :goto_282
    const-string v0, "myOnCreate ------ -End"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1700
    return-void

    .line 1686
    :cond_288
    :try_start_288
    const-string v0, "localpreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initialfreq"

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 1688
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_29f

    .line 1689
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 1690
    :cond_29f
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setInitialFreq(F)V

    .line 1692
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setFreqOnImage(F)V

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting initial freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_2bd
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_288 .. :try_end_2bd} :catch_2be

    goto :goto_282

    .line 1696
    :catch_2be
    move-exception v0

    .line 1697
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_282
.end method

.method private myOnResume()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xa

    .line 1704
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 1705
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawablePause:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_12
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_3 .. :try_end_12} :catch_ab

    .line 1719
    :goto_12
    const-string v0, "SettingsPreference"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "af"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1722
    if-eqz v0, :cond_b1

    .line 1723
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgAf:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableAFOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1727
    :goto_27
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 1728
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgEarphone:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableSpeakerOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1733
    :goto_36
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 1735
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->resetFavLayout()V

    .line 1736
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V

    .line 1742
    :try_start_47
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_72

    .line 1744
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got stream volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1746
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V
    :try_end_72
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_47 .. :try_end_72} :catch_c3

    .line 1751
    :cond_72
    :goto_72
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V

    .line 1752
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    if-eqz v0, :cond_c8

    .line 1753
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->visibleDelIcons()V

    .line 1757
    :goto_80
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 1758
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 1759
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1760
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_cc

    .line 1761
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeImg:Landroid/widget/ImageView;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1781
    :goto_a1
    return-void

    .line 1711
    :cond_a2
    :try_start_a2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawablePlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_a9
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_a2 .. :try_end_a9} :catch_ab

    goto/16 :goto_12

    .line 1712
    :catch_ab
    move-exception v0

    .line 1713
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto/16 :goto_12

    .line 1725
    :cond_b1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgAf:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableAFOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_27

    .line 1730
    :cond_ba
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgEarphone:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawableSpeakerOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_36

    .line 1748
    :catch_c3
    move-exception v0

    .line 1749
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_72

    .line 1755
    :cond_c8
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->showNormalSoftkeys()V

    goto :goto_80

    .line 1763
    :cond_cc
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeImg:Landroid/widget/ImageView;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a1
.end method

.method private refreshFavChannels(F)V
    .registers 6
    .parameter

    .prologue
    .line 2165
    const-string v0, "refreshing Fav channels"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2166
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_112

    .line 2167
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    .line 2168
    iget-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    if-eqz v2, :cond_2b

    .line 2169
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2166
    :goto_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 2175
    :cond_2b
    iget v2, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    packed-switch v2, :pswitch_data_116

    goto :goto_27

    .line 2180
    :pswitch_31
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 2181
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt1Freq:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->txt1FreqName:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v0, p1}, Lcom/sec/android/app/fm/MainActivity;->changeColor(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/fm/data/Channel;F)V

    .line 2182
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt1Freq:Landroid/widget/TextView;

    iget v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2183
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt1FreqName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 2187
    :pswitch_56
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->layout2B:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 2188
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt2Freq:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->txt2FreqName:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v0, p1}, Lcom/sec/android/app/fm/MainActivity;->changeColor(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/fm/data/Channel;F)V

    .line 2189
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt2Freq:Landroid/widget/TextView;

    iget v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2190
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt2FreqName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 2194
    :pswitch_7b
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->layout3B:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 2195
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt3Freq:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->txt3FreqName:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v0, p1}, Lcom/sec/android/app/fm/MainActivity;->changeColor(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/fm/data/Channel;F)V

    .line 2196
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt3Freq:Landroid/widget/TextView;

    iget v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2197
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt3FreqName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 2200
    :pswitch_a0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->layout4B:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 2201
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt4Freq:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->txt4FreqName:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v0, p1}, Lcom/sec/android/app/fm/MainActivity;->changeColor(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/fm/data/Channel;F)V

    .line 2202
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt4Freq:Landroid/widget/TextView;

    iget v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2203
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt4FreqName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_27

    .line 2206
    :pswitch_c6
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->layout5B:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 2207
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt5Freq:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->txt5FreqName:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v0, p1}, Lcom/sec/android/app/fm/MainActivity;->changeColor(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/fm/data/Channel;F)V

    .line 2208
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt5Freq:Landroid/widget/TextView;

    iget v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2209
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt5FreqName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_27

    .line 2212
    :pswitch_ec
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->layout6B:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 2213
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt6Freq:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->txt6FreqName:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v0, p1}, Lcom/sec/android/app/fm/MainActivity;->changeColor(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/fm/data/Channel;F)V

    .line 2214
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt6Freq:Landroid/widget/TextView;

    iget v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2215
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt6FreqName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_27

    .line 2223
    :cond_112
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateControlButtons()V

    .line 2224
    return-void

    .line 2175
    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_31
        :pswitch_56
        :pswitch_7b
        :pswitch_a0
        :pswitch_c6
        :pswitch_ec
    .end packed-switch
.end method

.method private removeChannel(I)V
    .registers 4
    .parameter "pos"

    .prologue
    .line 733
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 734
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v1, :cond_20

    .line 735
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 736
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity$Callback;->notifyUI()V

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 740
    .end local v0           #i:I
    :cond_20
    return-void
.end method

.method private resetFavLayout()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2350
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2351
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2352
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2353
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2354
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2355
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2358
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2359
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2B:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2360
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3B:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2361
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4B:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2362
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5B:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2363
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6B:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2365
    return-void
.end method

.method private resetRDS(F)V
    .registers 4
    .parameter

    .prologue
    .line 1325
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset RDS :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isRDSEnable()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1335
    :goto_29
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1341
    :goto_2f
    return-void

    .line 1329
    :cond_30
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 1330
    if-eqz v0, :cond_43

    .line 1331
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_29

    .line 1338
    :catch_3e
    move-exception v0

    .line 1339
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_2f

    .line 1333
    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_3e

    goto :goto_29
.end method

.method private saveCurrentHScrollFreq()V
    .registers 4

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    if-eqz v0, :cond_35

    .line 2415
    const-string v0, "localpreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2417
    const-string v1, "initialfreq"

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v2, v2, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 2418
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v1, v1, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2421
    :cond_35
    return-void
.end method

.method public static setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    .registers 7
    .parameter "mPlayer"
    .parameter "context"

    .prologue
    .line 1175
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1190
    :goto_6
    return-void

    .line 1177
    :cond_7
    const-string v2, "SettingsPreference"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "af"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1180
    .local v1, enable:Z
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AF enable :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1181
    if-eqz v1, :cond_39

    .line 1182
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->enableAF()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_6

    .line 1187
    .end local v1           #enable:Z
    :catch_33
    move-exception v2

    move-object v0, v2

    .line 1188
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1184
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #enable:Z
    :cond_39
    :try_start_39
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->disableAF()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_33

    goto :goto_6
.end method

.method private setFreqImageResource(ILandroid/widget/ImageView;)V
    .registers 4
    .parameter "number"
    .parameter "imgView"

    .prologue
    .line 330
    packed-switch p1, :pswitch_data_4a

    .line 367
    :goto_3
    return-void

    .line 333
    :pswitch_4
    const v0, 0x7f020030

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 337
    :pswitch_b
    const v0, 0x7f020031

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 341
    :pswitch_12
    const v0, 0x7f020032

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 344
    :pswitch_19
    const v0, 0x7f020033

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 347
    :pswitch_20
    const v0, 0x7f020034

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 350
    :pswitch_27
    const v0, 0x7f020035

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 353
    :pswitch_2e
    const v0, 0x7f020036

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 356
    :pswitch_35
    const v0, 0x7f020037

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 359
    :pswitch_3c
    const v0, 0x7f020038

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 363
    :pswitch_43
    const v0, 0x7f020039

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 330
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_b
        :pswitch_12
        :pswitch_19
        :pswitch_20
        :pswitch_27
        :pswitch_2e
        :pswitch_35
        :pswitch_3c
        :pswitch_43
    .end packed-switch
.end method

.method private static setOffAlarm(ILandroid/content/Context;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 645
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOffAlarm val:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 647
    if-ne p0, v3, :cond_8a

    .line 648
    const/16 v0, 0x1e

    .line 649
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v1, :cond_2a

    .line 650
    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 651
    :cond_2a
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    const v2, 0x7f07000d

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f070041

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 653
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 672
    :goto_4e
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 675
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/fm/AlarmReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 677
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 678
    invoke-virtual {p0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 679
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p0, v6, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 686
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set the alarm for :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 687
    return-void

    .line 655
    :cond_8a
    if-ne p0, v6, :cond_aa

    .line 656
    const/16 v0, 0x3c

    .line 657
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v1, :cond_98

    .line 658
    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 659
    :cond_98
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    const v2, 0x7f07000e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 661
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4e

    .line 663
    :cond_aa
    const/4 v0, 0x3

    if-ne p0, v0, :cond_df

    .line 664
    const/16 v0, 0x78

    .line 665
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v1, :cond_b9

    .line 666
    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 667
    :cond_b9
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    const v2, 0x7f07000f

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f070043

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 669
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4e

    :cond_df
    move v0, v5

    goto/16 :goto_4e
.end method

.method public static setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    .registers 7
    .parameter "mPlayer"
    .parameter "context"

    .prologue
    .line 1198
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1222
    :cond_6
    :goto_6
    return-void

    .line 1200
    :cond_7
    const-string v2, "SettingsPreference"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "stationid"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1203
    .local v1, enable:Z
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RDS enable :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1204
    if-eqz v1, :cond_3f

    .line 1205
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isRDSEnable()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1211
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->enableRDS()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_6

    .line 1218
    .end local v1           #enable:Z
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 1219
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1214
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #enable:Z
    :cond_3f
    :try_start_3f
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->disableRDS()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_39

    goto :goto_6
.end method

.method static setRegion(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const-string v0, "Europe"

    .line 1345
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1370
    :cond_8
    :goto_8
    return-void

    .line 1349
    :cond_9
    const-string v0, "SettingsPreference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "region"

    const-string v2, "Europe"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1352
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Region detected :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1354
    const-string v1, "Europe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1355
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->setBand(I)V

    .line 1356
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->setChannelSpacing(I)V

    .line 1357
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setDEConstant(J)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_46} :catch_47

    goto :goto_8

    .line 1367
    :catch_47
    move-exception v0

    .line 1368
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 1358
    :cond_4c
    :try_start_4c
    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1359
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->setBand(I)V

    .line 1360
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->setChannelSpacing(I)V

    .line 1361
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setDEConstant(J)V

    goto :goto_8

    .line 1362
    :cond_63
    const-string v1, "Japan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1363
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->setBand(I)V

    .line 1364
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->setChannelSpacing(I)V

    .line 1365
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setDEConstant(J)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_79} :catch_47

    goto :goto_8
.end method

.method private setVolume(I)V
    .registers 6
    .parameter "value"

    .prologue
    .line 1310
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1312
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_10
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_10} :catch_11

    .line 1321
    :cond_10
    :goto_10
    return-void

    .line 1318
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 1319
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method private showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 9
    .parameter "progress"
    .parameter "seekBar"

    .prologue
    .line 1276
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 1277
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 1278
    .local v0, bubbleX:I
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 1279
    .local v1, bubbleY:I
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1280
    const/16 v2, 0xf

    if-ne p1, v2, :cond_4b

    .line 1281
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    .line 1285
    :goto_23
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, p2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 1286
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 1287
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1289
    iget-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mIsBubbleRunable:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3e

    .line 1290
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mHideBubble:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1292
    :cond_3e
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mHideBubble:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mIsBubbleRunable:Z

    .line 1293
    return-void

    .line 1283
    :cond_4b
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    goto :goto_23
.end method

.method private showDelSoftkeys()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2656
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnAllChannel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2657
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnScan:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2658
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnDone:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2659
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnCanncel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2660
    return-void
.end method

.method private showNormalSoftkeys()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2649
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnAllChannel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2650
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnScan:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2651
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnDone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2652
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnCanncel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2653
    return-void
.end method

.method private startAllChannelActivity()V
    .registers 3

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 3070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 3071
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 3074
    :cond_15
    return-void
.end method

.method private stopSpeaking()V
    .registers 2

    .prologue
    .line 2425
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2428
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 2429
    const-string v0, "stop speaking.."

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 2435
    :cond_22
    :goto_22
    return-void

    .line 2432
    :catch_23
    move-exception v0

    .line 2433
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method private toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 4
    .parameter "oldParent"
    .parameter "newParent"

    .prologue
    .line 2153
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 2155
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2156
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2162
    :cond_f
    :goto_f
    return-void

    .line 2158
    :cond_10
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_f
.end method

.method private unregisterListener()V
    .registers 3

    .prologue
    .line 1409
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setCallback(Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;)V

    .line 1410
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 1411
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1412
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1413
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1414
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1415
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1416
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2B:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1417
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1418
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1419
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3B:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1420
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1421
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1422
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4B:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1423
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1424
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1425
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5B:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1428
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6B:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1429
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1430
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgAf:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgEarphone:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1432
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPrev:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1433
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlMinus:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1434
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1435
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlus:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1436
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlNext:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1437
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnAllChannel:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1438
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnScan:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnDone:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1440
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnCanncel:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1441
    const-string v0, "all listener are unregistered"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c5} :catch_c6

    .line 1445
    :goto_c5
    return-void

    .line 1442
    :catch_c6
    move-exception v0

    .line 1443
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c5
.end method

.method private updateControlButtons()V
    .registers 3

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPrev:Landroid/widget/ImageView;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2251
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlMinus:Landroid/widget/ImageView;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2253
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2254
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawablePause:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1f
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_10 .. :try_end_1f} :catch_38

    .line 2266
    :goto_1f
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlus:Landroid/widget/ImageView;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2267
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlNext:Landroid/widget/ImageView;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2269
    return-void

    .line 2259
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mImgControlPlay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDrawablePlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_37
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_1f

    .line 2263
    :catch_38
    move-exception v0

    .line 2264
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_1f
.end method

.method private visibleDelIcons()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2633
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 2634
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img1DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2635
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout2A:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 2636
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img2DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2637
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout3A:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    .line 2638
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img3DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2639
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout4A:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_35

    .line 2640
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img4DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2641
    :cond_35
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout5A:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_42

    .line 2642
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img5DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2643
    :cond_42
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout6A:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4f

    .line 2644
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img6DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2645
    :cond_4f
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->showDelSoftkeys()V

    .line 2646
    return-void
.end method


# virtual methods
.method public checkBGPlayingSetting()V
    .registers 4

    .prologue
    .line 2478
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    if-nez v0, :cond_20

    const-string v0, "SettingsPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "backgroudplaying"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2481
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z

    .line 2482
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 2488
    :cond_20
    :goto_20
    return-void

    .line 2484
    :catch_21
    move-exception v0

    .line 2486
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method clearNonFavChannel()V
    .registers 5

    .prologue
    .line 3037
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3038
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_c
    if-ltz v0, :cond_20

    .line 3040
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/data/Channel;

    iget-boolean v1, v1, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-nez v1, :cond_1d

    .line 3041
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->removeChannel(I)V

    .line 3038
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 3044
    :cond_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_29

    .line 3045
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 3046
    return-void

    .line 3044
    .end local v0           #i:I
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public error(Ljava/lang/Exception;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2786
    instance-of v1, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v1, :cond_4b

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4b

    .line 2787
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    if-nez v1, :cond_1b

    .line 2788
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 2789
    :cond_1b
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070016

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f070057

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2790
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2815
    :goto_4a
    return-void

    .line 2791
    :cond_4b
    instance-of v1, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v1, :cond_72

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_72

    .line 2792
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    if-nez v1, :cond_64

    .line 2793
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    .line 2794
    :cond_64
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    const v2, 0x7f070038

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 2795
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4a

    .line 2796
    :cond_72
    instance-of v1, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v1, :cond_99

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_99

    .line 2797
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    if-nez v1, :cond_8b

    .line 2798
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    .line 2799
    :cond_8b
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    const v2, 0x7f07004a

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 2800
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4a

    .line 2802
    :cond_99
    instance-of v1, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v1, :cond_c0

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_c0

    .line 2803
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    if-nez v1, :cond_b2

    .line 2804
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    .line 2805
    :cond_b2
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    const v2, 0x7f070051

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 2806
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4a

    .line 2808
    :cond_c0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastError:Landroid/widget/Toast;

    if-nez v1, :cond_ce

    .line 2809
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastError:Landroid/widget/Toast;

    .line 2810
    :cond_ce
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->toastError:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4a
.end method

.method public getChannel(F)Lcom/sec/android/app/fm/data/Channel;
    .registers 4
    .parameter "freqMHz"

    .prologue
    .line 2854
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 2855
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/data/Channel;

    iget v1, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_21

    .line 2856
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/fm/data/Channel;

    move-object v1, p0

    .line 2859
    :goto_20
    return-object v1

    .line 2854
    .restart local p0
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2859
    :cond_24
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public getCurrentChannel()F
    .registers 4

    .prologue
    const/high16 v2, -0x4080

    .line 2678
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2679
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J
    :try_end_17
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_2 .. :try_end_17} :catch_24

    move-result-wide v0

    long-to-float v0, v0

    .line 2680
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_20

    move v0, v2

    .line 2687
    :goto_1f
    return v0

    .line 2682
    :cond_20
    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    goto :goto_1f

    .line 2684
    :catch_24
    move-exception v0

    .line 2685
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    :cond_28
    move v0, v2

    .line 2687
    goto :goto_1f
.end method

.method public getFavChannel(F)Lcom/sec/android/app/fm/data/Channel;
    .registers 4
    .parameter "freqMHz"

    .prologue
    .line 2868
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 2869
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/data/Channel;

    iget v1, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/data/Channel;

    iget-boolean v1, v1, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-eqz v1, :cond_2d

    .line 2871
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/fm/data/Channel;

    move-object v1, p0

    .line 2874
    :goto_2c
    return-object v1

    .line 2868
    .restart local p0
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2874
    :cond_30
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method getRegion()V
    .registers 6

    .prologue
    const-string v4, "Japan"

    const-string v3, "Europe"

    .line 1540
    const-string v0, "SettingsPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "region"

    const-string v2, "Europe"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1543
    const-string v1, "Japan"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1544
    const/high16 v0, 0x4298

    sput v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 1545
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    const-string v1, "Japan"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setImage(Ljava/lang/String;)V

    .line 1550
    :goto_26
    return-void

    .line 1547
    :cond_27
    const/high16 v0, 0x42af

    sput v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 1548
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    const-string v1, "Europe"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setImage(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public hasFavChannel()Z
    .registers 3

    .prologue
    .line 2882
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 2883
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/data/Channel;

    iget-boolean v1, v1, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-eqz v1, :cond_17

    .line 2884
    const/4 v1, 0x1

    .line 2887
    :goto_16
    return v1

    .line 2882
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2887
    :cond_1a
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public hideVolumeBar()V
    .registers 7

    .prologue
    .line 1465
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    if-eqz v2, :cond_a

    .line 1466
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 1467
    :cond_a
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1468
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1469
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 1472
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1473
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1474
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    if-eqz v2, :cond_35

    .line 1475
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$7;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 1486
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_35
    :goto_35
    return-void

    .line 1482
    :catch_36
    move-exception v2

    move-object v1, v2

    .line 1484
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method public log(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 2669
    return-void
.end method

.method notifyToStatusBar()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    const v3, 0x7f070016

    const/4 v4, 0x1

    .line 2388
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player.status.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2390
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2391
    const-string v0, "sending ON broadcast when we put the notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2392
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    .line 2393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freq to notification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2394
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 2395
    const/high16 v1, -0x4080

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_6b

    .line 2396
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " MHz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    .line 2402
    :cond_6a
    :goto_6a
    return-void

    .line 2399
    :cond_6b
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    goto :goto_6a
.end method

.method public on()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 2752
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    move-result v0

    .line 2753
    if-nez v0, :cond_1b

    .line 2754
    new-instance v0, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v1, -0x1

    const/high16 v2, 0x7f07

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_16
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_16} :catch_16

    .line 2771
    :catch_16
    move-exception v0

    .line 2772
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    .line 2773
    throw v0

    .line 2757
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRegion(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 2761
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 2762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got the volume from audiomanager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2763
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2766
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 2767
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-static {v0, p0}, Lcom/sec/android/app/fm/MainActivity;->checkSettingAlarm(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 2768
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 2769
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    :try_end_60
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1b .. :try_end_60} :catch_16

    .line 2775
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f070009

    const/high16 v5, -0x4080

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2092
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2094
    if-ne p1, v3, :cond_7a

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7a

    .line 2096
    const-string v0, "com.samsung.app.fm.radio.freq.renamed"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2099
    const-string v1, "com.samsung.app.fm.radio.freq"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 2102
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_72

    .line 2104
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .line 2105
    if-eqz v1, :cond_6a

    if-eqz v0, :cond_6a

    .line 2107
    iput-object v0, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 2109
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2113
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2115
    iget-object v2, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2117
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    iget v2, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_62

    .line 2118
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2119
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2121
    :cond_62
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 2138
    :cond_69
    :goto_69
    return-void

    .line 2124
    :cond_6a
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_69

    .line 2129
    :cond_72
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_69

    .line 2133
    :cond_7a
    const/4 v0, 0x7

    if-ne p1, v0, :cond_69

    .line 2135
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->activityResult(IILandroid/content/Intent;)V

    goto :goto_69
.end method

.method public onAndTune(FLandroid/view/View;I)V
    .registers 6
    .parameter "freqMHz"
    .parameter "imgView"
    .parameter "resId"

    .prologue
    .line 2724
    :try_start_0
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_7

    .line 2744
    :goto_6
    return-void

    .line 2728
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2729
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->on()V

    .line 2732
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    .line 2733
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setFrequency(F)V
    :try_end_1a
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_6

    .line 2735
    :catch_1b
    move-exception v1

    move-object v0, v1

    .line 2736
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter

    .prologue
    .line 1377
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1378
    if-eqz v0, :cond_e

    .line 1379
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configuration changed :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1383
    :try_start_27
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->unregisterListener()V

    .line 1384
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->saveCurrentHScrollFreq()V

    .line 1388
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnCreate()V

    .line 1389
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnResume()V

    .line 1390
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1391
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1392
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1393
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_55} :catch_56

    .line 1405
    :cond_55
    :goto_55
    return-void

    .line 1400
    :catch_56
    move-exception v0

    .line 1401
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_55
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, ""

    .line 2002
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_172

    .line 2085
    :cond_d
    :goto_d
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_11
    return v0

    .line 2005
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 2009
    iget v1, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 2010
    iput-boolean v6, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 2011
    iput v9, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 2012
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 2015
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getFreshLayouts(I)[Ljava/lang/Object;

    move-result-object v0

    .line 2016
    if-eqz v0, :cond_d

    .line 2017
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v2, v0, v6

    aput-object v2, v1, v7

    .line 2018
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v0, v0, v7

    aput-object v0, v1, v3

    .line 2020
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v0, v0, v7

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2022
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_d

    .line 2028
    :pswitch_54
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freq is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2029
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new freq is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v2, v2, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2031
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v2

    .line 2032
    if-nez v2, :cond_a1

    move v0, v7

    .line 2033
    goto/16 :goto_11

    .line 2034
    :cond_a1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v0, v0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 2035
    if-nez v0, :cond_16e

    .line 2036
    new-instance v0, Lcom/sec/android/app/fm/data/Channel;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v1, v1, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    invoke-direct {v0, v1}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    .line 2037
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->addChannel(Lcom/sec/android/app/fm/data/Channel;)V

    move-object v3, v0

    .line 2040
    :goto_b8
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v0, v0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    iput v0, v3, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    .line 2042
    const-string v0, ""

    iput-object v8, v3, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 2043
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2044
    const-string v1, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 2045
    iput-object v0, v3, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 2046
    :cond_d6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 2047
    iput-boolean v7, v3, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 2049
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v0, v0, v7

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2052
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2053
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2054
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2055
    iget-object v1, v3, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2057
    iput-boolean v6, v2, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 2058
    iput v9, v2, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 2060
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 2061
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V

    .line 2063
    iget v0, v3, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    .line 2064
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2065
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_d

    .line 2071
    :pswitch_144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 2072
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/fm/RenameActionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2073
    const-string v2, "com.samsung.app.fm.radio.freq"

    iget v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 2076
    const-string v2, "com.samsung.app.fm.radio.freq.name"

    iget-object v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2078
    iput-boolean v7, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 2079
    invoke-virtual {p0, v1, v7}, Lcom/sec/android/app/fm/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    :cond_16e
    move-object v3, v0

    goto/16 :goto_b8

    .line 2002
    nop

    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_12
        :pswitch_144
        :pswitch_54
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 1491
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1492
    const-string v0, "oncreate -------------------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1493
    sput-object p0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    .line 1495
    const-string v0, "FMPlayer"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 1499
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_1e

    .line 1501
    const-string v0, "FMRadio Service Is NULL. Exit FMRadio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1536
    :goto_1d
    return-void

    .line 1506
    :cond_1e
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1507
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test.mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1508
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "going into test mode"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1509
    invoke-static {}, Lcom/sec/android/app/fm/TestMode;->getInstance()Lcom/sec/android/app/fm/TestMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/TestMode;->handleIntent(Landroid/content/Intent;)V

    goto :goto_1d

    .line 1512
    :cond_4b
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$MyHandler;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    .line 1514
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/ChannelStore;->load()V

    .line 1515
    const-string v0, "oncreate ------ChannelStore.getInstance().load-------------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1518
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->requestWindowFeature(I)Z

    .line 1520
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnCreate()V

    .line 1521
    const-string v0, "setting the listner"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1523
    :try_start_6a
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_71
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_6a .. :try_end_71} :catch_94

    .line 1530
    :goto_71
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    .line 1532
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1533
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1534
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1535
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeRec:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1d

    .line 1524
    :catch_94
    move-exception v0

    .line 1525
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_71
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1788
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    if-eqz v0, :cond_9

    .line 1801
    :goto_8
    return-void

    .line 1790
    :cond_9
    const v0, 0x7f07001a

    invoke-interface {p1, v2, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1792
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v0, v0, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getFavChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 1793
    const v0, 0x7f070023

    invoke-interface {p1, v2, v4, v4, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1795
    :cond_1f
    const v0, 0x7f070020

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1797
    invoke-direct {p0, p2}, Lcom/sec/android/app/fm/MainActivity;->getFavFreq(Landroid/view/View;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f07003e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1800
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_8
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter

    .prologue
    const v1, 0x7f020003

    const/4 v6, 0x0

    const v5, 0x7f07001e

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2894
    packed-switch p1, :pswitch_data_110

    :pswitch_c
    move-object v0, v6

    .line 3030
    :goto_d
    return-object v0

    .line 2913
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_44

    .line 2914
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07001f

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$9;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$8;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2940
    :cond_44
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_d

    .line 2944
    :pswitch_47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070013

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$10;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    .line 2956
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    goto :goto_d

    .line 2960
    :pswitch_7a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070010

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

    .line 2966
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

    goto/16 :goto_d

    .line 2970
    :pswitch_ad
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2971
    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2972
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f070040

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$11;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2998
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 3002
    :pswitch_db
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$12;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07001f

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTTSConfirmDialog:Landroid/app/AlertDialog;

    .line 3026
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTTSConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_d

    .line 2894
    :pswitch_data_110
    .packed-switch 0x2
        :pswitch_e
        :pswitch_47
        :pswitch_7a
        :pswitch_ad
        :pswitch_c
        :pswitch_c
        :pswitch_db
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 2532
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 2440
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2441
    const-string v0, "onDestroy -----------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2443
    :try_start_8
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    if-eqz v0, :cond_13

    .line 2444
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 2446
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2447
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->cancelScan()Z

    .line 2451
    :cond_20
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->saveCurrentHScrollFreq()V

    .line 2452
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    if-eqz v0, :cond_2c

    .line 2453
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->removeCallback()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_60

    .line 2455
    :cond_2c
    :try_start_2c
    const-string v0, "we are removing the listner"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2456
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_38
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_2c .. :try_end_38} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_60

    .line 2460
    :goto_38
    :try_start_38
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->destroy()V

    .line 2461
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/ChannelStore;->terminate()V

    .line 2462
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    if-eqz v0, :cond_4f

    .line 2463
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/WorkerThread;->terminate()V

    .line 2464
    :cond_4f
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->stopSpeaking()V

    .line 2465
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->unregisterListener()V

    .line 2466
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2471
    :goto_5a
    return-void

    .line 2457
    :catch_5b
    move-exception v0

    .line 2458
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5f} :catch_60

    goto :goto_38

    .line 2467
    :catch_60
    move-exception v0

    goto :goto_5a
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x19

    const/16 v4, 0x18

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keycode in down:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1852
    if-ne v3, p1, :cond_27

    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    if-eqz v0, :cond_27

    .line 1854
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelClicked()V

    move v0, v2

    .line 1885
    :goto_26
    return v0

    .line 1858
    :cond_27
    if-eq v5, p1, :cond_2b

    if-ne v4, p1, :cond_66

    .line 1860
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on key down:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mLongKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1871
    if-ne v4, p1, :cond_52

    .line 1872
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mLongKey:Z

    .line 1873
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->onMyKeyLongPress(I)V

    :cond_50
    :goto_50
    move v0, v2

    .line 1883
    goto :goto_26

    .line 1874
    :cond_52
    if-ne v5, p1, :cond_50

    .line 1875
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1876
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_50

    .line 1877
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->showVolumeBar()V

    goto :goto_50

    .line 1885
    :cond_66
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_26
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "Make volume bar"

    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keycode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1894
    const/16 v0, 0x19

    if-ne v0, p1, :cond_5c

    .line 1896
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_43

    .line 1897
    const-string v0, "Make volume bar"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1899
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1900
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1902
    :cond_43
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideSeekbar()V

    .line 1903
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    if-eqz v0, :cond_5a

    .line 1904
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    :cond_5a
    move v0, v3

    .line 1936
    :goto_5b
    return v0

    .line 1908
    :cond_5c
    const/16 v0, 0x18

    if-ne v0, p1, :cond_d0

    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mLongKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1917
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mLongKey:Z

    if-eqz v0, :cond_8e

    .line 1918
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mLongKey:Z

    move v0, v3

    .line 1920
    goto :goto_5b

    .line 1923
    :cond_8e
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_b0

    .line 1924
    const-string v0, "Make volume bar"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1925
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1926
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1927
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1930
    :cond_b0
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideSeekbar()V

    .line 1931
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_ce

    .line 1932
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    :cond_ce
    move v0, v3

    .line 1934
    goto :goto_5b

    .line 1936
    :cond_d0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5b
.end method

.method public onMyKeyLongPress(I)V
    .registers 5
    .parameter

    .prologue
    const-string v0, ""

    .line 1813
    const-string v0, "on key long press"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1817
    const/16 v0, 0x18

    if-ne v0, p1, :cond_78

    .line 1820
    :try_start_b
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->stopSpeaking()V

    .line 1821
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isRDSEnable()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1822
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1823
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 1825
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1828
    :cond_44
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 1830
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1833
    :cond_67
    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-nez v1, :cond_71

    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_78

    .line 1834
    :cond_71
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->speakUp([Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_78} :catch_79

    .line 1842
    :cond_78
    :goto_78
    return-void

    .line 1837
    :catch_79
    move-exception v0

    .line 1838
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_78
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2572
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->menuPrepareFlag:Z

    if-eqz v0, :cond_c

    .line 2573
    const-string v0, "MENU PREPARE in progress ignore"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    move v0, v2

    .line 2605
    :goto_b
    return v0

    .line 2577
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    :goto_13
    move v0, v2

    .line 2605
    goto :goto_b

    .line 2580
    :pswitch_15
    const-string v0, "MENU_REMOVE"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2582
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->hasFavChannel()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 2583
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastNoFav:Landroid/widget/Toast;

    if-nez v0, :cond_2c

    .line 2584
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastNoFav:Landroid/widget/Toast;

    .line 2586
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastNoFav:Landroid/widget/Toast;

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 2587
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastNoFav:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    .line 2591
    :cond_3a
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->visibleDelIcons()V

    .line 2592
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    goto :goto_13

    .line 2596
    :pswitch_40
    const-string v0, "MENU_SETTINGS"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2597
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 2598
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    .line 2577
    :pswitch_data_52
    .packed-switch 0x3
        :pswitch_15
        :pswitch_40
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 2822
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2823
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2825
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2509
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->menuPrepareFlag:Z

    .line 2510
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2511
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2513
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    if-eqz v0, :cond_12

    move v0, v3

    .line 2525
    :goto_11
    return v0

    .line 2519
    :cond_12
    const v0, 0x7f070054

    invoke-interface {p1, v2, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 2520
    const v1, 0x7f02004a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2521
    const v0, 0x7f07001c

    invoke-interface {p1, v2, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 2522
    const v1, 0x7f02004d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2524
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->menuPrepareFlag:Z

    move v0, v3

    .line 2525
    goto :goto_11
.end method

.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .registers 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 1302
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/fm/MainActivity;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 1305
    invoke-direct {p0, p2}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 1306
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 2343
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2344
    const-string v0, "onResume -------------------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2345
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnResume()V

    .line 2346
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 6
    .parameter "seekBar"

    .prologue
    .line 1259
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 1260
    .local v0, bubbleX:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 1261
    .local v1, bubbleY:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1262
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_34

    .line 1263
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    .line 1266
    :goto_1e
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 1268
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 1269
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1271
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 1272
    return-void

    .line 1265
    :cond_34
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    goto :goto_1e
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 2371
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2372
    const-string v0, "onStop -------------------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2378
    :try_start_8
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 2379
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->notifyToStatusBar()V
    :try_end_e
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_8 .. :try_end_e} :catch_12

    .line 2384
    :goto_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 2385
    return-void

    .line 2380
    :catch_12
    move-exception v0

    .line 2381
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    .line 2382
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_e
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 3
    .parameter "seekBar"

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1252
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideSeekbar()V

    .line 1253
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 1449
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    .line 1451
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    .line 2834
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2835
    return-void
.end method

.method removeAllChannel()V
    .registers 4

    .prologue
    .line 743
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 744
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 745
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_24

    .line 746
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v1, :cond_27

    .line 747
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 748
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity$Callback;->notifyUI()V

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 745
    .end local v0           #i:I
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 751
    :cond_27
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 752
    return-void
.end method

.method setFreqOnImage(F)V
    .registers 10
    .parameter "freqMHz"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, ""

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 311
    .local v0, arry:[C
    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a6

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mLayoutTwoDigit:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mLayoutThreeDigit:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq1A:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq2A:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    aget-char v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq3A:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq4A:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 326
    :cond_a5
    :goto_a5
    return-void

    .line 319
    :cond_a6
    array-length v1, v0

    if-ne v1, v6, :cond_a5

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mLayoutThreeDigit:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mLayoutTwoDigit:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq1:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq2:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    aget-char v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mImgFreq3:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setFreqImageResource(ILandroid/widget/ImageView;)V

    goto :goto_a5
.end method

.method public setFrequency(F)V
    .registers 7
    .parameter

    .prologue
    const-wide/high16 v3, 0x4059

    .line 2495
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_e

    .line 2496
    const-string v0, "worker thread busy ignore it"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2501
    :goto_d
    return-void

    .line 2499
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MainActivity] setFreq :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2500
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    float-to-double v1, p1

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setFrequency(F)V

    goto :goto_d
.end method

.method public showVolumeBar()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1455
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1456
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1457
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1458
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 1460
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideSeekbar()V

    .line 1461
    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 2613
    return-void
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 2620
    return-void
.end method

.method startScan(Z)Z
    .registers 5
    .parameter "isUpdateUI"

    .prologue
    .line 2538
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsUpdateUI:Z

    .line 2541
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-nez v1, :cond_18

    .line 2542
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    .line 2543
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->on()V

    .line 2547
    :goto_11
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->scan()V

    .line 2548
    const/4 v1, 0x1

    .line 2552
    :goto_17
    return v1

    .line 2546
    :cond_18
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J
    :try_end_20
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_11

    .line 2550
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 2551
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    .line 2552
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public toastOn()V
    .registers 3

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->onToast:Landroid/widget/Toast;

    if-nez v0, :cond_e

    .line 1166
    const v0, 0x7f070015

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->onToast:Landroid/widget/Toast;

    .line 1167
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->onToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1168
    return-void
.end method

.method public tune(FLandroid/view/View;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2698
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_35

    .line 2699
    :try_start_7
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    move v2, v0

    .line 2701
    :goto_a
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2702
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_20

    .line 2703
    const-string v0, "WorkerThread is busy ignore the events.."

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2714
    :cond_1f
    :goto_1f
    return-void

    .line 2706
    :cond_20
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/fm/WorkerThread;->doOperation(IJLandroid/view/View;I)V
    :try_end_2f
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_7 .. :try_end_2f} :catch_30

    goto :goto_1f

    .line 2711
    :catch_30
    move-exception v0

    .line 2712
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_1f

    :cond_35
    move v2, p1

    goto :goto_a
.end method

.method public unregisterCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 2842
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 2843
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2845
    :cond_9
    return-void
.end method
