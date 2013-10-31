.class public Lcom/android/internal/policy/impl/DMAccountUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "DMAccountUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockPattern"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private final OK_GONE:I

.field private final OK_VISIBLE:I

.field private final TAG:Ljava/lang/String;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mInstructions:Landroid/widget/TextView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mTopHeader:Landroid/widget/TextView;

.field private wrongCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 4
    .parameter "context"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v2, 0x1

    const/16 v3, 0x8

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    const-string v0, "DMAccountUnlockScreen"

    iput-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->TAG:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->wrongCount:I

    .line 81
    iput v2, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->OK_GONE:I

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->OK_VISIBLE:I

    .line 352
    new-instance v0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/DMAccountUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/DMAccountUnlockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 96
    iput-object p2, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 97
    iput-object p3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109004e

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    const v0, 0x1020295

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x104031f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 107
    const-string v0, "DMAccountUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTopHeader is...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const v0, 0x1020297

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    const-string v0, "DMAccountUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInstructions is...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const v0, 0x1020298

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 119
    const v0, 0x1020299

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    const v0, 0x102029a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mOk:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x1020294

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    return-void

    .line 103
    :cond_0
    const v0, 0x104031e

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/DMAccountUnlockScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/DMAccountUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->wrongCount:I

    return p1
.end method

.method private asyncCheckPassword()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 281
    iget-object v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v4, 0x7530

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 282
    iget-object v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, password:Ljava/lang/String;
    const/4 v0, 0x0

    .line 287
    .local v0, correctPassword:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/YLClassProxy;->SystemUtil_getLockCode_exist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    invoke-static {}, Lcom/android/internal/policy/impl/YLClassProxy;->SystemUtil_getLockCode()Ljava/lang/String;

    move-result-object v0

    .line 289
    const-string v3, "DMAccountUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "YLClassProxy.SystemUtil_getLockCode_exist() != null correctPassword = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->onCheckPasswordResult(Z)V

    .line 300
    sput-boolean v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDmLock:Z

    .line 301
    const-string v3, "persist.sys.isdmlock"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mContext:Landroid/content/Context;

    const v5, 0x10402fd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :cond_0
    :goto_1
    return-void

    .line 291
    :cond_1
    const-string v3, "odm_lckc"

    invoke-static {v3}, Lcom/android/internal/policy/impl/YLClassProxy;->SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v3, "DMAccountUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "YLClassProxy.SystemUtil_getLockCode_exist() = null correctPassword = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->wrongCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->wrongCount:I

    .line 308
    iget v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->wrongCount:I

    if-lez v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mContext:Landroid/content/Context;

    const v5, 0x10402fe

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->wrongCount:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 315
    iget-object v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    const-wide/32 v3, 0x493e0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v3, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 319
    :catch_0
    move-exception v1

    .line 321
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method private findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 13
    .parameter "username"

    .prologue
    const/16 v12, 0x40

    .line 245
    iget-object v10, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 251
    .local v2, accounts:[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 252
    .local v4, bestAccount:Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 253
    .local v5, bestScore:I
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v0, v3, v7

    .line 254
    .local v0, a:Landroid/accounts/Account;
    const/4 v9, 0x0

    .line 255
    .local v9, score:I
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 256
    const/4 v9, 0x4

    .line 270
    :cond_0
    :goto_1
    if-le v9, v5, :cond_5

    .line 271
    move-object v4, v0

    .line 272
    move v5, v9

    .line 253
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 257
    :cond_2
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 258
    const/4 v9, 0x3

    goto :goto_1

    .line 259
    :cond_3
    invoke-virtual {p1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_0

    .line 260
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 261
    .local v6, i:I
    if-ltz v6, :cond_0

    .line 262
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, aUsername:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 264
    const/4 v9, 0x2

    goto :goto_1

    .line 265
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 266
    const/4 v9, 0x1

    goto :goto_1

    .line 273
    .end local v1           #aUsername:Ljava/lang/String;
    .end local v6           #i:I
    :cond_5
    if-ne v9, v5, :cond_1

    .line 274
    const/4 v4, 0x0

    goto :goto_2

    .line 277
    .end local v0           #a:Landroid/accounts/Account;
    .end local v9           #score:I
    :cond_6
    return-object v4
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040326

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private onCheckPasswordResult(Z)V
    .locals 2
    .parameter "success"

    .prologue
    const/4 v1, 0x0

    .line 192
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v1, 0x1040324

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 131
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 135
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 177
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 224
    :goto_0
    const/4 v0, 0x1

    .line 226
    :goto_1
    return v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->asyncCheckPassword()V

    .line 189
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 170
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 139
    return-void
.end method
