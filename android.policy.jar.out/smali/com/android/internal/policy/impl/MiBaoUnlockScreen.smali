.class public Lcom/android/internal/policy/impl/MiBaoUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "MiBaoUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;
    }
.end annotation


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

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

.field private mHandler:Landroid/os/Handler;

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

.field private noteLaterToInput:Ljava/lang/String;

.field private ptod:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->wrongCount:I

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

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object v3, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    .line 74
    const-string v2, "mibao"

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->TAG:Ljava/lang/String;

    .line 76
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->DBG:Z

    .line 78
    iput v4, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mNaturalBarHeight:I

    .line 80
    iput-object v3, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->againGuard:Ljava/lang/String;

    .line 84
    iput-object v3, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 85
    iput-object v3, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 102
    iput v4, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->digit:I

    .line 103
    iput v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mEnteredDigits:I

    .line 105
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    .line 117
    const-string v2, "GUARD"

    invoke-static {v2}, Lcom/android/internal/policy/impl/YLClassProxy;->SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->againGuard:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 120
    iput-object p3, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900de

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    const-string v2, "MiBaoUnlockScreen"

    const-string v3, " it is doing mibao layout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->getStatusBarHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->ptod:I

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108060d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;

    iget v3, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->ptod:I

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;ILcom/android/internal/policy/impl/MiBaoUnlockScreen$1;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    const v3, 0x104051a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->noteLaterToInput:Ljava/lang/String;

    .line 166
    const v2, 0x10203ca

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    .line 167
    const v2, 0x10203cb

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    .line 168
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    const v2, 0x10202b9

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 170
    const v2, 0x1020357

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mZero:Landroid/widget/TextView;

    .line 171
    const v2, 0x102034e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mOne:Landroid/widget/TextView;

    .line 172
    const v2, 0x102034f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mTwo:Landroid/widget/TextView;

    .line 173
    const v2, 0x1020350

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mThree:Landroid/widget/TextView;

    .line 174
    const v2, 0x1020351

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mFour:Landroid/widget/TextView;

    .line 175
    const v2, 0x1020352

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mFive:Landroid/widget/TextView;

    .line 176
    const v2, 0x1020353

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mSix:Landroid/widget/TextView;

    .line 177
    const v2, 0x1020354

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mSeven:Landroid/widget/TextView;

    .line 178
    const v2, 0x1020355

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mEight:Landroid/widget/TextView;

    .line 179
    const v2, 0x1020356

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mNine:Landroid/widget/TextView;

    .line 180
    const v2, 0x10203cd

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    .line 181
    const v2, 0x10203cc

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mOk:Landroid/widget/TextView;

    .line 182
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mZero:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mOne:Landroid/widget/TextView;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mTwo:Landroid/widget/TextView;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mThree:Landroid/widget/TextView;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mFour:Landroid/widget/TextView;

    const-string v3, "4"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mFive:Landroid/widget/TextView;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mSix:Landroid/widget/TextView;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mSeven:Landroid/widget/TextView;

    const-string v3, "7"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mEight:Landroid/widget/TextView;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mNine:Landroid/widget/TextView;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mZero:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mOne:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mTwo:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mThree:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mFour:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mFive:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mSix:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$7;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mSeven:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$8;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mEight:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$9;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mNine:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$10;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$10;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$11;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$12;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$12;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mOk:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$13;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$13;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    return-void

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "MiBaoUnlockScreen"

    const-string v3, "MiBao background is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->digit:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->digit:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->asyncCheckPassword()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    sput p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->wrongCount:I

    return p0
.end method

.method private asyncCheckPassword()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 488
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v6, 0x7530

    invoke-interface {v5, v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 489
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, password:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, correctPassword:Ljava/lang/String;
    const-string v5, "mibao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "correctPassword is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 494
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->showFangdao(Ljava/lang/String;)I

    move-result v2

    .line 495
    .local v2, isShow:I
    const-string v5, "MiBaoUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isShow= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-nez v2, :cond_1

    .line 497
    const-string v5, "MiBaoUnlockScreen"

    const-string v6, "showFangdao(password) == 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    sput-boolean v8, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isFangdaoPattern:Z

    .line 500
    sput-boolean v8, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isRebootPassPattern:Z

    .line 501
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5, v9}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 531
    .end local v2           #isShow:I
    :cond_0
    :goto_0
    return-void

    .line 503
    .restart local v2       #isShow:I
    :cond_1
    sget v5, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->wrongCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->wrongCount:I

    .line 504
    const-string v5, "MiBaoUnlockScreen"

    const-string v6, "showFangdao(password) != 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    sget v5, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->wrongCount:I

    rsub-int/lit8 v3, v5, 0x3

    .line 508
    .local v3, leftChance:I
    if-lez v3, :cond_2

    .line 509
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    const v6, 0x1040519

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, hint:Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 511
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 514
    .end local v1           #hint:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 515
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->noteLaterToInput:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$14;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$14;-><init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V

    const-wide/16 v7, 0x7530

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private getPassword()Ljava/lang/String;
    .locals 5

    .prologue
    .line 467
    const-string v1, ""

    .line 468
    .local v1, password:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/policy/impl/YLClassProxy;->GlobalKeys_SYS_SERVICE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    .line 474
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/policy/impl/YLClassProxy;->GlobalKeys_SYS_SERVICE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    .line 476
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/internal/policy/impl/YLClassProxy;->SystemManager_getSecurityManagerPassword(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 483
    :goto_0
    return-object v1

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "mibao"

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
    .line 560
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 561
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private showFangdao(Ljava/lang/String;)I
    .locals 5
    .parameter "isShow"

    .prologue
    .line 536
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/YLClassProxy;->SystemInterfaceFactory_getSysteminterface()Ljava/lang/Object;

    move-result-object v2

    .line 537
    .local v2, systemInterface:Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/YLClassProxy;->ISystemInterface_validateKeyguardSecurityPass(Ljava/lang/Object;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 542
    .end local v2           #systemInterface:Ljava/lang/Object;
    :goto_0
    return v1

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MiBaoUnlockScreen"

    const-string v4, "MiBao showFangdao() is exception.............."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 383
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 387
    return-void
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 450
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 457
    :goto_0
    const/4 v0, 0x1

    .line 459
    :goto_1
    return v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    goto :goto_0

    .line 459
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public getStatusBarHeight()I
    .locals 4

    .prologue
    .line 565
    iget v1, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 567
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mNaturalBarHeight:I

    .line 571
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".......................................mNaturalBarHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mNaturalBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget v1, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mNaturalBarHeight:I

    return v1
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    sget v0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->wrongCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->noteLaterToInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 392
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 550
    if-eqz p1, :cond_0

    .line 551
    const-string v0, "MiBaoUnlockScreen"

    const-string v1, "onWindowFocusChanged hasWindowFocus is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_0
    return-void

    .line 555
    :cond_0
    const-string v0, "MiBaoUnlockScreen"

    const-string v1, "onWindowFocusChanged hasWindowFocus is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
