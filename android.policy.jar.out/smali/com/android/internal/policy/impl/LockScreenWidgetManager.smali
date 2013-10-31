.class public Lcom/android/internal/policy/impl/LockScreenWidgetManager;
.super Ljava/lang/Object;
.source "LockScreenWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;,
        Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;,
        Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;,
        Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;
    }
.end annotation


# static fields
.field private static final DATETIME_WIDGET_ID:I = 0x4

.field private static final DEBUG:Z = false

.field private static final DOUBLE_WIDGET_ID:I = 0x5

.field private static final EXTRA_STATUSBAR_MUSIC:Ljava/lang/String; = "music"

.field private static final INFORBOX_WIDGET_ID:I = 0x0

.field static final LONG_PRESS_MUSIC:J = 0xbb8L

.field private static final MAP_WIDGET_ID:I = 0x2

.field private static final MUSIC_WIDGET_ID:I = 0x3

.field private static final NOWEATHERANDINFOBOX:I = 0x3

.field private static final ONLYSHOWINFORBAOXWIDGET:I = 0x1

.field private static final ONLYSHOWWEATHERWIDGET:I = 0x0

.field private static final SHOWINFOBOXANDWEATHER:I = 0x2

.field static final SHOW_KEYGUARD_DELAY:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "LockScreenWidgetManager"

.field private static final UPDATE_STATUSBAR_MUSIC:Ljava/lang/String; = "Yulong.intent.action.STATUS_BAR_EXPAND_VIEW_MUSIC_CONTROL"

.field private static final WEATHER_WIDGET_ID:I = 0x1

.field public static mChildCount:I

.field public static mCurrentDraw:I

.field public static mGestureDetector:Landroid/view/GestureDetector;

.field private static mSelectWhichWidget:I

.field private static widgetCount:I


# instance fields
.field private bPlayingMusic:Z

.field private bShowMusicWidget:Z

.field private btnMusicNext:Landroid/widget/Button;

.field private btnMusicNextListener:Landroid/view/View$OnClickListener;

.field private btnMusicPause:Landroid/widget/Button;

.field private btnMusicPauseListener:Landroid/view/View$OnClickListener;

.field private btnMusicPlay:Landroid/widget/Button;

.field private btnMusicPlayListener:Landroid/view/View$OnClickListener;

.field private btnMusicPre:Landroid/widget/Button;

.field private btnMusicPreListener:Landroid/view/View$OnClickListener;

.field handler:Landroid/os/Handler;

.field private imgMusicCover:Landroid/widget/ImageView;

.field private isItemsWidgetExist:[Z

.field private isMusicUIHasExist:Z

.field private isShowNoWeatherAndInfoWidget:Z

.field private isShowOnlyInfoBoxWidget:Z

.field private isShowOnlyWeatherWidget:Z

.field private isShowWeatherAndinfoWidget:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mAppointCityDate:Ljava/lang/CharSequence;

.field private mAppointCityDateTv:Landroid/widget/TextView;

.field private mAppointCityName:Ljava/lang/String;

.field private mAppointCityNameTv:Landroid/widget/TextView;

.field private mAppointCityTime:Ljava/lang/CharSequence;

.field private mAppointCityTimeTv:Landroid/widget/TextView;

.field private mCarrierText:Ljava/lang/CharSequence;

.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateTimeParentLayout:Landroid/view/View;

.field private mDateTimeWidget:Landroid/view/View;

.field private mDateView:Landroid/widget/TextView;

.field private mDigitalclock:Lcom/android/internal/widget/DigitalClock;

.field private mDoubleTimeWidget:Landroid/view/View;

.field mDownInMusicMusic:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasMusicUIView:Z

.field private mInfoBoxParentLayout:Landroid/view/View;

.field private mInfoCallbackImpl:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mInforBoxWidget:Landroid/view/View;

.field private mIsDoubleTimeShow:Z

.field private mIsWidgetExist:[Z

.field private mLocalCityDate:Ljava/lang/CharSequence;

.field private mLocalCityDateTv:Landroid/widget/TextView;

.field private mLocalCityName:Ljava/lang/String;

.field private mLocalCityNameTv:Landroid/widget/TextView;

.field private mLocalCityTine:Ljava/lang/CharSequence;

.field private mLocalCityTineTv:Landroid/widget/TextView;

.field private mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

.field private mMapBitmap:Landroid/graphics/Bitmap;

.field private mMapImageView:Landroid/widget/ImageView;

.field private mMapWidget:Landroid/view/View;

.field private mMusicName:Ljava/lang/String;

.field private mMusicParentLayout:Landroid/view/View;

.field private mMusicWidget:Landroid/view/View;

.field private mOnlySong:Landroid/widget/TextView;

.field private mPressTick:J

.field private mShowMusicMiniUI:Z

.field private mShowWidgetHasExist:I

.field private mSlidingTipLinearLayout:Landroid/widget/LinearLayout;

.field private mStatusView:Landroid/widget/TextView;

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mStrMusicName:Ljava/lang/String;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mUnReadInfoListView:Landroid/widget/ListView;

.field private mUnReadMailNum:I

.field private mUnReadPhoneNum:I

.field private mUnReadSMSNum:I

.field private mUnReadSchemeNum:I

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private mWeatherBitmap:Landroid/graphics/Bitmap;

.field private mWeatherImageView:Landroid/widget/ImageView;

.field private mWeatherInMessageBoxWidget:Landroid/widget/LinearLayout;

.field private mWeatherParentLayout:Landroid/view/View;

.field private mWeatherPromptTv:Landroid/widget/TextView;

.field private mWeatherWidget:Landroid/view/View;

.field private musicNameTextView:Landroid/widget/TextView;

.field private musicWidget:Landroid/widget/RelativeLayout;

.field private mySwitchLinearLayout:Landroid/widget/FrameLayout;

.field private mySwitchView:Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;

.field private showWhichWidget:I

.field private strSongName:Ljava/lang/String;

.field private strWeatherPrompt:Ljava/lang/String;

.field private textMusicName:Landroid/widget/TextView;

.field private tzAlbumArt:Ljava/lang/String;

.field private weatherImageView:Landroid/widget/ImageView;

.field private widgetBackGroudIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 98
    sput v0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mChildCount:I

    .line 99
    sput v0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCurrentDraw:I

    .line 114
    sput v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->widgetCount:I

    .line 115
    sput v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSelectWhichWidget:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 9
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "statusViewManager"

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 579
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-array v2, v7, [Z

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isItemsWidgetExist:[Z

    .line 100
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->widgetBackGroudIds:[I

    .line 112
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showWhichWidget:I

    .line 120
    new-array v2, v6, [Z

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mIsWidgetExist:[Z

    .line 141
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mPressTick:J

    .line 146
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bShowMusicWidget:Z

    .line 148
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->tzAlbumArt:Ljava/lang/String;

    .line 149
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bPlayingMusic:Z

    .line 150
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strSongName:Ljava/lang/String;

    .line 152
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mShowMusicMiniUI:Z

    .line 154
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mHasMusicUIView:Z

    .line 790
    new-instance v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$3;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPlayListener:Landroid/view/View$OnClickListener;

    .line 808
    new-instance v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$4;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPreListener:Landroid/view/View$OnClickListener;

    .line 827
    new-instance v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$5;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicNextListener:Landroid/view/View$OnClickListener;

    .line 847
    new-instance v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$6;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPauseListener:Landroid/view/View$OnClickListener;

    .line 1140
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowOnlyWeatherWidget:Z

    .line 1141
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowWeatherAndinfoWidget:Z

    .line 1142
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowNoWeatherAndInfoWidget:Z

    .line 1143
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowOnlyInfoBoxWidget:Z

    .line 1320
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mIsDoubleTimeShow:Z

    .line 1522
    new-instance v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInfoCallbackImpl:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    .line 1641
    new-instance v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager$10;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$10;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mHandler:Landroid/os/Handler;

    .line 1648
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDownInMusicMusic:Z

    .line 581
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    .line 582
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 583
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 584
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 585
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x10900d8

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    .line 586
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 587
    const v2, 0x10900db

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherWidget:Landroid/view/View;

    .line 588
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherWidget:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 589
    const v2, 0x10900d7

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapWidget:Landroid/view/View;

    .line 590
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapWidget:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 591
    const v2, 0x10900d9

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    .line 592
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 593
    const v2, 0x10900d3

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;

    .line 594
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setId(I)V

    .line 595
    const v2, 0x10900d4

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    .line 596
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setId(I)V

    .line 597
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    const v3, 0x102038f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLocalCityNameTv:Landroid/widget/TextView;

    .line 598
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    const v3, 0x1020397

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mAppointCityNameTv:Landroid/widget/TextView;

    .line 600
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    const v3, 0x1020392

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLocalCityTineTv:Landroid/widget/TextView;

    .line 601
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    const v3, 0x102039a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mAppointCityTimeTv:Landroid/widget/TextView;

    .line 603
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    const v3, 0x1020395

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLocalCityDateTv:Landroid/widget/TextView;

    .line 604
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    const v3, 0x102039c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mAppointCityDateTv:Landroid/widget/TextView;

    .line 605
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    const v3, 0x102039f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 606
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;

    const v3, 0x1020064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/DigitalClock;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDigitalclock:Lcom/android/internal/widget/DigitalClock;

    .line 607
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;

    const v3, 0x1020063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateView:Landroid/widget/TextView;

    .line 609
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;

    const v3, 0x10202ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusView:Landroid/widget/TextView;

    .line 610
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;

    const v3, 0x10202ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mAlarmStatusView:Landroid/widget/TextView;

    .line 611
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDigitalclock:Lcom/android/internal/widget/DigitalClock;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/DigitalClock;->setVisibility(I)V

    .line 612
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    const v3, 0x10203a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInfoBoxParentLayout:Landroid/view/View;

    .line 616
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherWidget:Landroid/view/View;

    const v3, 0x10203bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherParentLayout:Landroid/view/View;

    .line 617
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    const v3, 0x10203ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicParentLayout:Landroid/view/View;

    .line 618
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;

    const v3, 0x1020388

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeParentLayout:Landroid/view/View;

    .line 619
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mHasMusicUIView:Z

    .line 620
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    const v3, 0x10203ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->musicWidget:Landroid/widget/RelativeLayout;

    .line 621
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    const v3, 0x10203ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->imgMusicCover:Landroid/widget/ImageView;

    .line 622
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    const v3, 0x10203b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPlay:Landroid/widget/Button;

    .line 623
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    const v3, 0x10203b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPre:Landroid/widget/Button;

    .line 624
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    const v3, 0x10203b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicNext:Landroid/widget/Button;

    .line 625
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    const v3, 0x10203b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPause:Landroid/widget/Button;

    .line 626
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    const v3, 0x10203af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->textMusicName:Landroid/widget/TextView;

    .line 628
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPlay:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPlayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPre:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicNext:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPause:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    const v3, 0x10203a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherInMessageBoxWidget:Landroid/widget/LinearLayout;

    .line 635
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    sput-object v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mGestureDetector:Landroid/view/GestureDetector;

    .line 637
    new-instance v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchView:Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;

    .line 638
    const v2, 0x102037f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    .line 639
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 641
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchView:Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 644
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchView:Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 645
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 647
    :cond_0
    const v2, 0x1020380

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSlidingTipLinearLayout:Landroid/widget/LinearLayout;

    .line 649
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSlidingTipLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 650
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSlidingTipLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 652
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInfoCallbackImpl:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 653
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 654
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshDate()V

    .line 655
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateDate()V

    .line 656
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateCarrier()V

    .line 657
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateStatus()V

    .line 658
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateAlarmStatus()V

    .line 659
    return-void

    .line 100
    nop

    :array_0
    .array-data 0x4
        0x99t 0x6t 0x8t 0x1t
        0x9at 0x6t 0x8t 0x1t
        0x9bt 0x6t 0x8t 0x1t
        0x9ct 0x6t 0x8t 0x1t
    .end array-data

    .line 120
    :array_1
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->widgetBackGroudIds:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInfoBoxParentLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSchemeNum:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->widgetCount:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mShowWidgetHasExist:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/LockScreenWidgetManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mShowWidgetHasExist:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isItemsWidgetExist:[Z

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/widget/DigitalClock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDigitalclock:Lcom/android/internal/widget/DigitalClock;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherParentLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->refreshSlidingView()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustCanFlipper()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustIsShoSwitchView()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strSongName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strSongName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->tzAlbumArt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->tzAlbumArt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicParentLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSlidingTipLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mHasMusicUIView:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bShowMusicWidget:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bShowMusicWidget:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bPlayingMusic:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSelectWhichWidget:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSelectWhichWidget:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showWhichWidget:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/LockScreenWidgetManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showWhichWidget:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadPhoneNum:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSMSNum:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadMailNum:I

    return v0
.end method

.method private adjustCanFlipper()V
    .locals 2

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    const v1, 0x102037d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1399
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$7;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1410
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 1411
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1412
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$8;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1422
    :cond_2
    return-void
.end method

.method private adjustFirstShow()V
    .locals 4

    .prologue
    .line 1346
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mIsDoubleTimeShow:Z

    if-eqz v1, :cond_1

    .line 1347
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---adjustCanFlipper mIsDoubleTimeShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mIsDoubleTimeShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1349
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1350
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--mDoubleTimeWidget.getId() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1352
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -------------i1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1354
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mViewFlipper.getChildAt(i).getId() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1360
    .end local v0           #i:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1361
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1362
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--mDoubleTimeWidget.getId() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1364
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -------------i2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1368
    :cond_3
    return-void
.end method

.method private adjustIsShoSwitchView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1435
    sget v0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mChildCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 1436
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSlidingTipLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1440
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSlidingTipLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1450
    :cond_1
    :goto_0
    return-void

    .line 1443
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 1444
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1446
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSlidingTipLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1447
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSlidingTipLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dipValue"

    .prologue
    .line 1475
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1476
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 1471
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1472
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private refreshSlidingView()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1424
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mChildCount:I

    .line 1425
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchView:Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;->invalidate()V

    .line 1426
    new-instance v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchView:Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;

    .line 1427
    const v1, 0x102037f

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    .line 1428
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x5

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1430
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1431
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchLinearLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mySwitchView:Lcom/android/internal/policy/impl/LockScreenWidgetManager$MySwitchView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1432
    return-void
.end method


# virtual methods
.method public addMusicWidget(Z)V
    .locals 4
    .parameter "isShowMusicWidget"

    .prologue
    const/4 v3, -0x1

    .line 1372
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_0

    .line 1373
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isMusicUIHasExist:Z

    if-ne p1, v1, :cond_1

    .line 1386
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isMusicUIHasExist:Z

    .line 1388
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->refreshSlidingView()V

    .line 1389
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustIsShoSwitchView()V

    .line 1390
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustCanFlipper()V

    .line 1391
    return-void

    .line 1376
    :cond_1
    if-eqz p1, :cond_2

    .line 1378
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 1379
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1380
    .local v0, parmas:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1383
    .end local v0           #parmas:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public checkHitMusicUI(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1650
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDownInMusicMusic:Z

    .line 1651
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bShowMusicWidget:Z

    if-nez v1, :cond_0

    .line 1652
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDownInMusicMusic:Z

    .line 1664
    :goto_0
    return v1

    .line 1654
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->getHitRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1655
    .local v0, rect:Landroid/graphics/Rect;
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1656
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDownInMusicMusic:Z

    goto :goto_0

    .line 1658
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDownInMusicMusic:Z

    .line 1659
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mShowMusicMiniUI:Z

    if-eqz v1, :cond_2

    .line 1660
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showMusicUI()V

    .line 1664
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDownInMusicMusic:Z

    goto :goto_0
.end method

.method public closeMusicUI()V
    .locals 2

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->musicWidget:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1711
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getGestureListener()Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;
    .locals 1

    .prologue
    .line 1126
    new-instance v0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$GestureListener;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "rect"

    .prologue
    .line 1667
    if-nez p1, :cond_0

    .line 1668
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1671
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->musicWidget:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 1672
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mShowMusicMiniUI:Z

    if-eqz v0, :cond_1

    .line 1677
    :cond_1
    return-object p1
.end method

.method public getLockScreenWidgetChoice()Lcom/android/internal/policy/impl/LockScreenWidgetChoice;
    .locals 1

    .prologue
    .line 1467
    new-instance v0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    return-object v0
.end method

.method protected inFromLeftAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 990
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x4080

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 995
    .local v0, inFromLeft:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 997
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 998
    return-object v0
.end method

.method protected inFromRightAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 957
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 963
    .local v0, inFromRight:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 965
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 966
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 785
    const-string v0, "LockScreenWidgetManager"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInfoCallbackImpl:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 787
    return-void
.end method

.method public onPlayOrPause(Z)V
    .locals 5
    .parameter "mpop"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 904
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bPlayingMusic:Z

    .line 905
    const-string v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bPlayingMusic is keyguard1 is gothrough ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bPlayingMusic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bPlayingMusic:Z

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPlay:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPause:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 915
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPlay:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->btnMusicPause:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onShowPicture(Ljava/lang/String;)V
    .locals 10
    .parameter "picture"

    .prologue
    const v9, 0x1080638

    .line 864
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->tzAlbumArt:Ljava/lang/String;

    .line 865
    const-string v6, "KeyguardStatusView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " keyguard1 is gothrough tzAlbumArt ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->tzAlbumArt:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->tzAlbumArt:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->tzAlbumArt:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 867
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->imgMusicCover:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 893
    :goto_0
    return-void

    .line 875
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->tzAlbumArt:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 876
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 877
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_2

    .line 878
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 879
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 880
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 881
    const/16 v6, 0x5a

    const/16 v7, 0x5a

    const/4 v8, 0x0

    invoke-static {v0, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 882
    .local v4, scaleBitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 883
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->imgMusicCover:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 888
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #scaleBitmap:Landroid/graphics/Bitmap;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 890
    .local v1, ex:Ljava/lang/Exception;
    const-string v6, "LockScreenWidgetManager"

    const-string v7, "StatusBarNotifyView, pfd is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->imgMusicCover:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onShowSongName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strSongName:Ljava/lang/String;

    .line 896
    const-string v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strSongName is keyguard1 is gothrough="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strSongName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strSongName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 898
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strSongName:Ljava/lang/String;

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setShowMusicName()V

    .line 902
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 921
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 922
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 923
    .local v2, y:F
    if-nez v0, :cond_2

    .line 926
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->checkHitMusicUI(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 939
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 930
    goto :goto_0

    .line 932
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDownInMusicMusic:Z

    if-nez v5, :cond_3

    move v3, v4

    .line 933
    goto :goto_0

    .line 935
    :cond_3
    if-eq v0, v3, :cond_4

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 936
    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDownInMusicMusic:Z

    goto :goto_0
.end method

.method protected outToLeftAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 974
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x4080

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 979
    .local v0, outtoLeft:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 981
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 982
    return-object v0
.end method

.method protected outToRightAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1006
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1011
    .local v0, outtoRight:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1013
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1014
    return-object v0
.end method

.method public sendBroadCastToStatusBar(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 1457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.Lockscreen.CHANGE_STATUBAR_BLACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1458
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "changeback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1459
    const-string v1, "isHideStatuBar"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1460
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1461
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1463
    :cond_0
    const-string v1, "LockScreenWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "senBsetBroadCastToStatusBar flag after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    return-void
.end method

.method public setOnSurfaceTouchListener(Lcom/android/internal/policy/impl/LockScreenStatusInfo;)V
    .locals 0
    .parameter "onSurfaceTouchListener"

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    .line 1639
    return-void
.end method

.method public setShowMusicName()V
    .locals 2

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->textMusicName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strSongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1701
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mShowMusicMiniUI:Z

    if-eqz v0, :cond_0

    .line 1706
    :goto_0
    return-void

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->textMusicName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strSongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setUnReadPhone(I)V
    .locals 0
    .parameter "showNum"

    .prologue
    .line 1129
    iput p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadPhoneNum:I

    .line 1130
    return-void
.end method

.method public setUnreadCalendaNum(I)V
    .locals 0
    .parameter "showNum"

    .prologue
    .line 1135
    iput p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSchemeNum:I

    .line 1136
    return-void
.end method

.method public setUnreadEmailNum(I)V
    .locals 0
    .parameter "showNum"

    .prologue
    .line 1138
    iput p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadMailNum:I

    .line 1139
    return-void
.end method

.method public setUnreadSmsNum(I)V
    .locals 0
    .parameter "showNum"

    .prologue
    .line 1132
    iput p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSMSNum:I

    .line 1133
    return-void
.end method

.method public setWeatherBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter "bitmap"
    .parameter "weatherPrompt"

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherBitmap:Landroid/graphics/Bitmap;

    .line 1276
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strWeatherPrompt:Ljava/lang/String;

    .line 1277
    return-void
.end method

.method public showDoubleTimeWidget(Z)V
    .locals 5
    .parameter "isShow"

    .prologue
    const/4 v4, -0x1

    .line 1323
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--showDoubleTimeWidget-----mIsDoubleTimeShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mIsDoubleTimeShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_0

    .line 1325
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "-----mViewFlipper != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mIsDoubleTimeShow:Z

    if-eq v1, p1, :cond_0

    .line 1327
    if-eqz p1, :cond_1

    .line 1328
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 1329
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1330
    .local v0, parmas:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1334
    .end local v0           #parmas:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mIsDoubleTimeShow:Z

    .line 1335
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->refreshSlidingView()V

    .line 1336
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustIsShoSwitchView()V

    .line 1337
    const-string v1, "##"

    const-string v2, "-------adjustCanFlipper 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustFirstShow()V

    .line 1339
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustCanFlipper()V

    .line 1343
    :cond_0
    return-void

    .line 1332
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDoubleTimeWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showMusicMiniUI()V
    .locals 1

    .prologue
    .line 1690
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bShowMusicWidget:Z

    if-nez v0, :cond_0

    .line 1698
    :goto_0
    return-void

    .line 1693
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mShowMusicMiniUI:Z

    .line 1696
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setShowMusicName()V

    goto :goto_0
.end method

.method public showMusicUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1680
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bShowMusicWidget:Z

    if-nez v0, :cond_0

    .line 1688
    :goto_0
    return-void

    .line 1683
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mShowMusicMiniUI:Z

    .line 1684
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->musicWidget:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1686
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setShowMusicName()V

    goto :goto_0
.end method

.method public showNoWeatherAndInfoWidget()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherWidget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 549
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustCanFlipper()V

    .line 578
    return-void
.end method

.method public showOnlyInfoBoxWidget()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 448
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 449
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherWidget:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 451
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 452
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherInMessageBoxWidget:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    const v4, 0x10203aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadInfoListView:Landroid/widget/ListView;

    .line 455
    new-instance v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    .line 456
    .local v1, mAdapter:Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadInfoListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 457
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadInfoListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/internal/policy/impl/LockScreenWidgetManager$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$1;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 466
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    const v4, 0x10203a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherImageView:Landroid/widget/ImageView;

    .line 467
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 468
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080656

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherBitmap:Landroid/graphics/Bitmap;

    .line 471
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 473
    .local v2, weatherDrawable1:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    return-void
.end method

.method public showOnlyWeatherWidget()V
    .locals 6

    .prologue
    .line 417
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 418
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 420
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherWidget:Landroid/view/View;

    const v2, 0x10203c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->weatherImageView:Landroid/widget/ImageView;

    .line 421
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherWidget:Landroid/view/View;

    const v2, 0x10203c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherPromptTv:Landroid/widget/TextView;

    .line 422
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherPromptTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strWeatherPrompt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080656

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherBitmap:Landroid/graphics/Bitmap;

    .line 427
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 429
    .local v0, weatherDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->weatherImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherWidget:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    return-void
.end method

.method public showWeatherAndInfoBoxWidget()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 497
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 498
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherWidget:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 499
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x430d8000

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 500
    .local v1, layoutXDip:I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 501
    .local v0, layoutParams1:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherInMessageBoxWidget:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    const v5, 0x10203aa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadInfoListView:Landroid/widget/ListView;

    .line 504
    new-instance v2, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    .line 505
    .local v2, mAdapter1:Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadInfoListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 506
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadInfoListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/internal/policy/impl/LockScreenWidgetManager$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$2;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 515
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    const v5, 0x10203a7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherImageView:Landroid/widget/ImageView;

    .line 516
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 517
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080656

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherBitmap:Landroid/graphics/Bitmap;

    .line 520
    :cond_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 522
    .local v3, weatherDrawable2:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInforBoxWidget:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    return-void
.end method

.method public slidingTipAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 944
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4120

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 950
    .local v0, slidingToRight:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 951
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 952
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 953
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 954
    return-object v0
.end method

.method updateAlarmStatus()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 675
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getNextAlarmText()Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, nextAlarm:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getIsShowAlarm()Z

    move-result v0

    .line 677
    .local v0, isShowAlarm:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, 0x108002e

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 679
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 680
    return-void

    .line 679
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method

.method updateCarrier()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getCarrierText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mCarrierText:Ljava/lang/CharSequence;

    .line 667
    return-void
.end method

.method updateDate()V
    .locals 2

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getDateFormatString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 662
    .local v0, mDateFormatString:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    return-void
.end method

.method public updateDoubleTimeData(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "localCityName"
    .parameter "localCityTime"
    .parameter "localCityDate"
    .parameter "appointCityName"
    .parameter "appointCityTime"
    .parameter "appointCityDate"

    .prologue
    const/16 v7, 0xff

    const/high16 v6, 0x41f0

    const/high16 v5, 0x4170

    .line 1299
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "------updateDoubleTimeData"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x3c

    .line 1301
    .local v0, string1Lenth:I
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v1, v2, 0x3c

    .line 1302
    .local v1, string2Lenth:I
    const-string v2, "LockScreenWidgetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------string1Lenth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "string2Lenth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-string v2, "LockScreenWidgetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " localCityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "appointCityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    if-gt v0, v7, :cond_0

    if-le v1, v7, :cond_1

    .line 1305
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLocalCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1306
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mAppointCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1311
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLocalCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLocalCityTineTv:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1313
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLocalCityDateTv:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1315
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mAppointCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mAppointCityTimeTv:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mAppointCityDateTv:Landroid/widget/TextView;

    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1319
    return-void

    .line 1308
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mLocalCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1309
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mAppointCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public updateMessageBoxData()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1146
    sget v1, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mSelectWhichWidget:I

    packed-switch v1, :pswitch_data_0

    .line 1243
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustCanFlipper()V

    .line 1267
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->refreshSlidingView()V

    .line 1268
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustIsShoSwitchView()V

    .line 1269
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadInfoListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 1270
    new-instance v0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    .line 1271
    .local v0, mAdapter:Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadInfoListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1273
    .end local v0           #mAdapter:Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;
    :cond_1
    return-void

    .line 1148
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowOnlyWeatherWidget:Z

    if-nez v1, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showOnlyWeatherWidget()V

    .line 1150
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowOnlyWeatherWidget:Z

    goto :goto_0

    .line 1155
    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadPhoneNum:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSMSNum:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadMailNum:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSchemeNum:I

    if-nez v1, :cond_2

    .line 1156
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowOnlyInfoBoxWidget:Z

    .line 1157
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowNoWeatherAndInfoWidget:Z

    if-nez v1, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showNoWeatherAndInfoWidget()V

    .line 1159
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowNoWeatherAndInfoWidget:Z

    goto :goto_0

    .line 1163
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowNoWeatherAndInfoWidget:Z

    .line 1164
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowOnlyInfoBoxWidget:Z

    if-nez v1, :cond_0

    .line 1165
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showOnlyInfoBoxWidget()V

    .line 1166
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowOnlyInfoBoxWidget:Z

    goto :goto_0

    .line 1171
    :pswitch_2
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadPhoneNum:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSMSNum:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadMailNum:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSchemeNum:I

    if-nez v1, :cond_3

    .line 1172
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowWeatherAndinfoWidget:Z

    .line 1173
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowOnlyWeatherWidget:Z

    if-nez v1, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showOnlyWeatherWidget()V

    .line 1175
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowOnlyWeatherWidget:Z

    goto :goto_0

    .line 1178
    :cond_3
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowOnlyWeatherWidget:Z

    .line 1179
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowWeatherAndinfoWidget:Z

    if-nez v1, :cond_0

    .line 1180
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showWeatherAndInfoBoxWidget()V

    .line 1181
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowWeatherAndinfoWidget:Z

    goto :goto_0

    .line 1187
    :pswitch_3
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowOnlyWeatherWidget:Z

    .line 1188
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowWeatherAndinfoWidget:Z

    .line 1189
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowOnlyInfoBoxWidget:Z

    .line 1191
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowNoWeatherAndInfoWidget:Z

    if-nez v1, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showNoWeatherAndInfoWidget()V

    .line 1193
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isShowNoWeatherAndInfoWidget:Z

    goto/16 :goto_0

    .line 1146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method updateStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 669
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getStatusText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 670
    .local v1, statusText:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getStatusIcon()Llibcore/util/MutableInt;

    move-result-object v0

    .line 671
    .local v0, statusIcon:Llibcore/util/MutableInt;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusView:Landroid/widget/TextView;

    iget v3, v0, Llibcore/util/MutableInt;->value:I

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 673
    return-void
.end method

.method public updateWeatherBitmapResourse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1279
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1280
    .local v0, weatherBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1282
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1283
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1285
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->weatherImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1286
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->weatherImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1287
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->weatherImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1289
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherPromptTv:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1290
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherPromptTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strWeatherPrompt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    :cond_2
    return-void
.end method
