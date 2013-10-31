.class public Lcom/android/gallery3d/app/MovieControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/gallery3d/app/bj;
.implements Lcom/android/gallery3d/app/df;


# static fields
.field private static final fL:F = 0.16666667f


# instance fields
.field private fM:Lcom/android/gallery3d/app/ai;

.field private final fN:Landroid/view/View;

.field private final fO:Lcom/android/gallery3d/app/e;

.field private fP:Landroid/view/View;

.field private final fQ:Landroid/widget/LinearLayout;

.field private final fR:Landroid/widget/TextView;

.field private final fS:Landroid/widget/ImageView;

.field private final fT:Ljava/lang/Runnable;

.field private final fU:Landroid/view/animation/Animation;

.field private fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

.field private fW:Z

.field private fX:Z

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, -0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fX:Z

    .line 84
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hC:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 86
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 93
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fN:Landroid/view/View;

    .line 94
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fN:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fN:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v2, Lcom/android/gallery3d/app/e;

    invoke-direct {v2, p1, p0}, Lcom/android/gallery3d/app/e;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/bj;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    .line 98
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    invoke-virtual {p0, v2, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fQ:Landroid/widget/LinearLayout;

    .line 101
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fQ:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fQ:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 103
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 105
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fQ:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fQ:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    .line 109
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    const v3, 0x7f020027

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 111
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 113
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 114
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fR:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fR:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fR:Landroid/widget/TextView;

    const/high16 v2, -0x3400

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fR:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fR:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/android/gallery3d/app/ae;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ae;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fT:Ljava/lang/Runnable;

    .line 130
    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fU:Landroid/view/animation/Animation;

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fU:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 133
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 137
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 203
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fP:Landroid/view/View;

    .line 204
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fR:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fP:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fR:Landroid/widget/TextView;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fQ:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fP:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fQ:Landroid/widget/LinearLayout;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fP:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 209
    return-void

    :cond_0
    move v0, v2

    .line 204
    goto :goto_0

    :cond_1
    move v0, v2

    .line 205
    goto :goto_1

    :cond_2
    move v1, v2

    .line 206
    goto :goto_2
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 345
    sub-int v2, p4, p2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 346
    sub-int v3, p5, p3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 347
    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 348
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->aJ()V

    return-void
.end method

.method private aI()V
    .locals 4

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->aK()V

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hy:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fT:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    :cond_0
    return-void
.end method

.method private aJ()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->b(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->b(Landroid/view/View;)V

    .line 233
    return-void
.end method

.method private aK()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fT:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fN:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/e;->setAnimation(Landroid/view/animation/Animation;)V

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 246
    return-void
.end method

.method private aL()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fW:Z

    if-eqz v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fN:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hy:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v2, :cond_2

    .line 362
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/e;->setVisibility(I)V

    .line 366
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hz:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v3, :cond_3

    const v0, 0x7f020027

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hC:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hB:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hA:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fX:Z

    if-eqz v0, :cond_5

    :cond_1
    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestLayout()V

    goto :goto_0

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/e;->setVisibility(I)V

    goto :goto_1

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hy:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v3, :cond_4

    const v0, 0x7f020026

    goto :goto_2

    :cond_4
    const v0, 0x7f020028

    goto :goto_2

    .line 370
    :cond_5
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fU:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public E()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/e;->E()V

    .line 181
    return-void
.end method

.method public aE()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hy:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->a(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method public aF()V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hz:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->a(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public aG()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hA:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->a(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method public aH()V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hC:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fQ:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->a(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method public aM()V
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->aK()V

    .line 382
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fM:Lcom/android/gallery3d/app/ai;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ai;->bx()V

    .line 383
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 172
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hB:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 173
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 174
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fR:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fR:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fR:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->a(Landroid/view/View;)V

    .line 177
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 148
    return-object p0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 188
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fW:Z

    .line 189
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fW:Z

    .line 190
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fQ:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fN:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/e;->setVisibility(I)V

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVisibility(I)V

    .line 195
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setFocusable(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestFocus()Z

    .line 197
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fM:Lcom/android/gallery3d/app/ai;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fW:Z

    if-eq v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fM:Lcom/android/gallery3d/app/ai;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ai;->bz()V

    .line 200
    :cond_0
    return-void
.end method

.method public i(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/e;->b(II)V

    .line 185
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 258
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fM:Lcom/android/gallery3d/app/ai;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hA:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 264
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fX:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fM:Lcom/android/gallery3d/app/ai;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ai;->bA()V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hz:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hy:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fM:Lcom/android/gallery3d/app/ai;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ai;->bw()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fW:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 279
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    sub-int v0, p5, p3

    .line 312
    sub-int v1, p4, p2

    .line 313
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fR:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/e;->getBarHeight()I

    move-result v2

    .line 317
    sub-int v2, p5, v2

    .line 319
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fN:Landroid/view/View;

    invoke-virtual {v3, p2, v2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 321
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/e;->getPreferredHeight()I

    move-result v3

    sub-int v3, p5, v3

    invoke-virtual {v2, p2, v3, p4, p5}, Lcom/android/gallery3d/app/e;->layout(IIII)V

    .line 323
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fO:Lcom/android/gallery3d/app/e;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/e;->requestLayout()V

    .line 326
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    .line 327
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    .line 328
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 329
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    .line 330
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fS:Landroid/widget/ImageView;

    div-int/lit8 v6, v3, 0x2

    sub-int v6, v2, v6

    div-int/lit8 v7, v4, 0x2

    sub-int v7, v0, v7

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v4, 0x2

    add-int/2addr v0, v3

    invoke-virtual {v5, v6, v7, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 335
    int-to-float v0, v1

    const v1, 0x3e2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 337
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fP:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fP:Landroid/view/View;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->a(Landroid/view/View;IIII)V

    .line 340
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->measureChildren(II)V

    .line 354
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 284
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v2

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fW:Z

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 294
    :pswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->aK()V

    .line 295
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hy:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fV:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->hz:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fM:Lcom/android/gallery3d/app/ai;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ai;->bw()V

    goto :goto_0

    .line 300
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->aI()V

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCanReplay(Z)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fX:Z

    .line 145
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/app/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fM:Lcom/android/gallery3d/app/ai;

    .line 141
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fW:Z

    .line 213
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fW:Z

    .line 214
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->aL()V

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVisibility(I)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setFocusable(Z)V

    .line 217
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fM:Lcom/android/gallery3d/app/ai;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fW:Z

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fM:Lcom/android/gallery3d/app/ai;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ai;->by()V

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->aI()V

    .line 221
    return-void
.end method

.method public y(I)V
    .locals 1
    .parameter

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->aK()V

    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fM:Lcom/android/gallery3d/app/ai;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ai;->I(I)V

    .line 388
    return-void
.end method

.method public z(I)V
    .locals 1
    .parameter

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->aI()V

    .line 392
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->fM:Lcom/android/gallery3d/app/ai;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ai;->J(I)V

    .line 393
    return-void
.end method
