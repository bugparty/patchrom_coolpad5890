.class public Lcom/android/gallery3d/photoeditor/EffectsBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private aC:Lcom/android/gallery3d/photoeditor/ap;

.field private final pH:Landroid/view/LayoutInflater;

.field private yA:Landroid/view/ViewGroup;

.field private yB:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

.field private yy:Lcom/android/gallery3d/photoeditor/EffectsMenu;

.field private yz:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->pH:Landroid/view/LayoutInflater;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yz:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/EffectsBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yA:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yB:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    return-object p1
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/EffectsBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->az(I)V

    return-void
.end method

.method private az(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->pH:Landroid/view/LayoutInflater;

    const v1, 0x7f04001a

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yz:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yz:Landroid/view/View;

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->pH:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move v3, v4

    .line 78
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 79
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setupEffectListener(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 78
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {v0, v4, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yz:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/android/gallery3d/photoeditor/EffectsBar;->addView(Landroid/view/View;I)V

    .line 84
    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/photoeditor/EffectsBar;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->fb()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/gallery3d/photoeditor/EffectsBar;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->fa()V

    return-void
.end method

.method private c(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yB:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/android/gallery3d/photoeditor/an;->showDialog()V

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yB:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    new-instance v1, Lcom/android/gallery3d/photoeditor/t;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/t;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->a(Ljava/lang/Runnable;)V

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/ap;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->aC:Lcom/android/gallery3d/photoeditor/ap;

    return-object v0
.end method

.method static synthetic e(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yA:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic f(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->pH:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private fa()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->pH:Landroid/view/LayoutInflater;

    const v1, 0x7f040014

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yA:Landroid/view/ViewGroup;

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yA:Landroid/view/ViewGroup;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yB:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->x()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yA:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->addView(Landroid/view/View;I)V

    .line 114
    return-void
.end method

.method private fb()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yz:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yB:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yz:Landroid/view/View;

    const v2, 0x7f0a0023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yB:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yz:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->removeView(Landroid/view/View;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yz:Landroid/view/View;

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic g(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yB:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    return-object v0
.end method

.method private setupEffectListener(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    new-instance v0, Lcom/android/gallery3d/photoeditor/u;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/u;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->setListener(Lcom/android/gallery3d/photoeditor/actions/ae;)V

    .line 107
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/ap;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->aC:Lcom/android/gallery3d/photoeditor/ap;

    .line 51
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/EffectsMenu;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yy:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yy:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    new-instance v1, Lcom/android/gallery3d/photoeditor/v;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/v;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setOnToggleListener(Lcom/android/gallery3d/photoeditor/y;)V

    .line 71
    return-void
.end method

.method public d(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->yy:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->ct()V

    .line 165
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->c(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const/4 v0, 0x1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->fb()Z

    move-result v0

    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
