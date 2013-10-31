.class public Lcom/android/gallery3d/photoeditor/actions/RotateAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "SourceFile"


# static fields
.field private static final jL:F = 0.0f

.field private static final uZ:F = 360.0f


# instance fields
.field private va:Lcom/android/gallery3d/photoeditor/filters/RotateFilter;

.field private vb:F

.field private vc:Ljava/lang/Runnable;

.field private vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/RotateAction;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vb:F

    return p1
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)Lcom/android/gallery3d/photoeditor/actions/RotateView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/RotateAction;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vc:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/RotateAction;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->n(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->eq()V

    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)F
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vb:F

    return v0
.end method

.method static synthetic d(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vc:Ljava/lang/Runnable;

    return-object v0
.end method

.method private eq()V
    .locals 3

    .prologue
    const/high16 v2, 0x42b4

    .line 109
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vb:F

    rem-float/2addr v0, v2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vb:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vb:F

    .line 112
    :cond_0
    return-void
.end method

.method private n(Z)V
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->va:Lcom/android/gallery3d/photoeditor/filters/RotateFilter;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vb:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;->h(F)V

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->va:Lcom/android/gallery3d/photoeditor/filters/RotateFilter;

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 117
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->a(Lcom/android/gallery3d/photoeditor/actions/e;)V

    .line 101
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->eq()V

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->n(Z)V

    .line 103
    return-void
.end method

.method public z()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->va:Lcom/android/gallery3d/photoeditor/filters/RotateFilter;

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->az:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->fu()Lcom/android/gallery3d/photoeditor/actions/RotateView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/s;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/s;-><init>(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->a(Lcom/android/gallery3d/photoeditor/actions/e;)V

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->x(F)V

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    const/high16 v1, 0x43b4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->y(F)V

    .line 93
    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vb:F

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->vc:Ljava/lang/Runnable;

    .line 95
    return-void
.end method
