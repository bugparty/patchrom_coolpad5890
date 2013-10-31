.class public Lcom/android/internal/policy/impl/FangdaoUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "FangdaoUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/FangdaoUnlockScreen$FastBitmapDrawable;
    }
.end annotation


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static isShow:I

.field private static wrongCount:I


# instance fields
.field private DBG:Z

.field SystemManager_mSystemInterface:Ljava/lang/Object;

.field private final TAG:Ljava/lang/String;

.field private againGuard:Ljava/lang/String;

.field private digit:I

.field protected mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mEight:Landroid/widget/TextView;

.field private mEnteredDigits:I

.field private mError:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNaturalBarHeight:I

.field private mNine:Landroid/widget/TextView;

.field private mOk:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field public mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field public mWallpaperManager:Landroid/app/WallpaperManager;

.field private mZero:Landroid/widget/TextView;

.field private ptod:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    sput v0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->wrongCount:I

    .line 65
    sput v0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->isShow:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 6
    .parameter "context"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object v3, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    .line 59
    const-string v2, "fangdao"

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->TAG:Ljava/lang/String;

    .line 60
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->DBG:Z

    .line 61
    iput v4, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mNaturalBarHeight:I

    .line 63
    iput-object v3, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->againGuard:Ljava/lang/String;

    .line 68
    iput-object v3, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 69
    iput-object v3, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 87
    iput v4, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->digit:I

    .line 88
    iput v5, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mEnteredDigits:I

    .line 98
    iput-object p1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    .line 100
    const-string v2, "GUARD"

    invoke-static {v2}, Lcom/android/internal/policy/impl/YLClassProxy;->SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->againGuard:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 103
    iput-object p3, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900dd

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->getStatusBarHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->ptod:I

    .line 116
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108060d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$FastBitmapDrawable;

    iget v3, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->ptod:I

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;ILcom/android/internal/policy/impl/FangdaoUnlockScreen$1;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_0
    const v2, 0x10203ca

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mError:Landroid/widget/TextView;

    .line 134
    const v2, 0x10203cb

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    .line 135
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    const v2, 0x10202b9

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 137
    const v2, 0x1020357

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mZero:Landroid/widget/TextView;

    .line 138
    const v2, 0x102034e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mOne:Landroid/widget/TextView;

    .line 139
    const v2, 0x102034f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mTwo:Landroid/widget/TextView;

    .line 140
    const v2, 0x1020350

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mThree:Landroid/widget/TextView;

    .line 141
    const v2, 0x1020351

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mFour:Landroid/widget/TextView;

    .line 142
    const v2, 0x1020352

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mFive:Landroid/widget/TextView;

    .line 143
    const v2, 0x1020353

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mSix:Landroid/widget/TextView;

    .line 144
    const v2, 0x1020354

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mSeven:Landroid/widget/TextView;

    .line 145
    const v2, 0x1020355

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mEight:Landroid/widget/TextView;

    .line 146
    const v2, 0x1020356

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mNine:Landroid/widget/TextView;

    .line 147
    const v2, 0x10203cd

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    .line 148
    const v2, 0x10203cc

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mOk:Landroid/widget/TextView;

    .line 149
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mZero:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mOne:Landroid/widget/TextView;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mTwo:Landroid/widget/TextView;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mThree:Landroid/widget/TextView;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mFour:Landroid/widget/TextView;

    const-string v3, "4"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mFive:Landroid/widget/TextView;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mSix:Landroid/widget/TextView;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mSeven:Landroid/widget/TextView;

    const-string v3, "7"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mEight:Landroid/widget/TextView;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mNine:Landroid/widget/TextView;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mZero:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mOne:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mTwo:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mThree:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mFour:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mFive:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mSix:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$7;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mSeven:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$8;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mEight:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$9;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mNine:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$10;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$10;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$11;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$12;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$12;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mOk:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$13;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$13;-><init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FangdaoUnlockScreen"

    const-string v3, "fangdao background is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->digit:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->digit:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->asyncCheckPassword()V

    return-void
.end method

.method private asyncCheckPassword()V
    .locals 5

    .prologue
    .line 419
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x7530

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 420
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, password:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, correctPassword:Ljava/lang/String;
    const-string v2, "fangdao"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "correctPassword is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->showFangdao(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->isShow:I

    .line 426
    const-string v2, "FangdaoUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShow= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->isShow:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget v2, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->isShow:I

    if-nez v2, :cond_1

    .line 428
    const-string v2, "FangdaoUnlockScreen"

    const-string v3, "showFangdao(password) == 0 is done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mError:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isFangdaoPattern:Z

    .line 431
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const-string v2, "FangdaoUnlockScreen"

    const-string v3, "showFangdao(password) != 0 is done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->showInfoError()V

    goto :goto_0
.end method

.method private getPassword()Ljava/lang/String;
    .locals 5

    .prologue
    .line 398
    const-string v1, ""

    .line 399
    .local v1, password:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/policy/impl/YLClassProxy;->GlobalKeys_SYS_SERVICE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    .line 405
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/policy/impl/YLClassProxy;->GlobalKeys_SYS_SERVICE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    .line 407
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/internal/policy/impl/YLClassProxy;->SystemManager_getSecurityManagerPassword(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    :goto_0
    return-object v1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "fangdao"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in onCreate, getSysteminterface error,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 474
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private showFangdao(Ljava/lang/String;)I
    .locals 6
    .parameter "isShow"

    .prologue
    .line 450
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/YLClassProxy;->SystemInterfaceFactory_getSysteminterface()Ljava/lang/Object;

    move-result-object v2

    .line 451
    .local v2, systemInterface:Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/YLClassProxy;->ISystemInterface_validateKeyguardSecurityPass(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 452
    .local v1, showType:I
    const-string v3, "FangdaoUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fangdao showType=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v1           #showType:I
    .end local v2           #systemInterface:Ljava/lang/Object;
    :goto_0
    return v1

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FangdaoUnlockScreen"

    const-string v4, "Fangdao showFangdao() is exception.............."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showInfoError()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 441
    iget-object v1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040514

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, hint:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->isShow:I

    rsub-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 302
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 306
    return-void
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 381
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 388
    :goto_0
    const/4 v0, 0x1

    .line 390
    :goto_1
    return v0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    goto :goto_0

    .line 390
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public getStatusBarHeight()I
    .locals 4

    .prologue
    .line 479
    iget v1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 481
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mNaturalBarHeight:I

    .line 485
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".......................................mNaturalBarHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mNaturalBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget v1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mNaturalBarHeight:I

    return v1
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    sget v0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->isShow:I

    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    const-string v0, "FangdaoUnlockScreen"

    const-string v1, "onResume() isShow ==0 is done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 311
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 462
    if-eqz p1, :cond_0

    .line 463
    const-string v0, "FangdaoUnlockScreen"

    const-string v1, "onWindowFocusChanged hasWindowFocus is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_0
    return-void

    .line 465
    :cond_0
    const-string v0, "FangdaoUnlockScreen"

    const-string v1, "onWindowFocusChanged hasWindowFocus is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
