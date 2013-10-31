.class public abstract Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private aA:Lcom/android/gallery3d/photoeditor/actions/ae;

.field private aB:Landroid/widget/Toast;

.field private aC:Lcom/android/gallery3d/photoeditor/ap;

.field private aD:Z

.field private aE:Lcom/android/gallery3d/photoeditor/actions/am;

.field protected az:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/ae;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aA:Lcom/android/gallery3d/photoeditor/actions/ae;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aB:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aB:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aB:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 114
    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aB:Landroid/widget/Toast;

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aD:Z

    .line 117
    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aE:Lcom/android/gallery3d/photoeditor/actions/am;

    .line 119
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 120
    return-void
.end method


# virtual methods
.method protected abstract A()V
.end method

.method public a(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aC:Lcom/android/gallery3d/photoeditor/ap;

    .line 79
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->az:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;

    .line 82
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aB:Landroid/widget/Toast;

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aB:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aB:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->z()V

    .line 88
    return-void
.end method

.method protected a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aD:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/filters/Filter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aC:Lcom/android/gallery3d/photoeditor/ap;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/ap;->b(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aD:Z

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aD:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 135
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/photoeditor/actions/am;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Lcom/android/gallery3d/photoeditor/actions/p;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aE:Lcom/android/gallery3d/photoeditor/actions/am;

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aC:Lcom/android/gallery3d/photoeditor/ap;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aE:Lcom/android/gallery3d/photoeditor/actions/am;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/ap;->d(Lcom/android/gallery3d/photoeditor/be;)V

    .line 138
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->A()V

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aE:Lcom/android/gallery3d/photoeditor/actions/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aE:Lcom/android/gallery3d/photoeditor/actions/am;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/am;->a(Lcom/android/gallery3d/photoeditor/actions/am;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->b(Ljava/lang/Runnable;)V

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aE:Lcom/android/gallery3d/photoeditor/actions/am;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/q;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/actions/q;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/am;->a(Lcom/android/gallery3d/photoeditor/actions/am;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public setListener(Lcom/android/gallery3d/photoeditor/actions/ae;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aA:Lcom/android/gallery3d/photoeditor/actions/ae;

    .line 61
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aA:Lcom/android/gallery3d/photoeditor/actions/ae;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/p;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/actions/p;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    goto :goto_0
.end method

.method public x()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected y()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aA:Lcom/android/gallery3d/photoeditor/actions/ae;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->aA:Lcom/android/gallery3d/photoeditor/actions/ae;

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/ae;->dc()V

    .line 126
    :cond_0
    return-void
.end method

.method protected abstract z()V
.end method
