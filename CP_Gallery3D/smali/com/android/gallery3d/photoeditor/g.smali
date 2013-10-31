.class Lcom/android/gallery3d/photoeditor/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# static fields
.field private static final jC:I = 0x1

.field private static final jD:I = 0x1f40


# instance fields
.field private final jE:Ljava/util/List;

.field private final jF:Landroid/os/Handler;

.field private final jG:Landroid/view/animation/Animation;

.field private final jH:Landroid/view/animation/Animation;

.field private jI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/g;->jE:Ljava/util/List;

    .line 67
    new-instance v0, Lcom/android/gallery3d/photoeditor/d;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/d;-><init>(Lcom/android/gallery3d/photoeditor/g;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/g;->jF:Landroid/os/Handler;

    .line 84
    const/high16 v0, 0x7f05

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/g;->jG:Landroid/view/animation/Animation;

    .line 85
    const v0, 0x7f050001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/g;->jH:Landroid/view/animation/Animation;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/g;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/g;->jI:Z

    return v0
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/g;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/g;->jI:Z

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/photoeditor/g;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/g;->jE:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/photoeditor/g;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/g;->jH:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public bX()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/g;->jF:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/g;->jI:Z

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/g;->jI:Z

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/g;->jE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 93
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/g;->jG:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/g;->jF:Landroid/os/Handler;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a002a

    if-eq v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/g;->jE:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/g;->jE:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method
