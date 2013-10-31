.class public Lcom/android/gallery3d/photoeditor/an;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field private static AL:Landroid/view/ViewGroup;

.field private static AM:Lcom/android/gallery3d/photoeditor/an;


# instance fields
.field private final AN:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 74
    sget-object v0, Lcom/android/gallery3d/photoeditor/an;->AL:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0012

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/an;->AN:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Landroid/widget/ProgressBar;

    sget-object v1, Lcom/android/gallery3d/photoeditor/an;->AL:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/an;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    sput-object p0, Lcom/android/gallery3d/photoeditor/an;->AL:Landroid/view/ViewGroup;

    .line 43
    return-void
.end method

.method public static dismissDialog()V
    .locals 3

    .prologue
    .line 63
    sget-object v0, Lcom/android/gallery3d/photoeditor/an;->AM:Lcom/android/gallery3d/photoeditor/an;

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/android/gallery3d/photoeditor/an;->AM:Lcom/android/gallery3d/photoeditor/an;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/an;->dismiss()V

    .line 66
    sget-object v0, Lcom/android/gallery3d/photoeditor/an;->AM:Lcom/android/gallery3d/photoeditor/an;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/an;->AN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 67
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/photoeditor/an;->AM:Lcom/android/gallery3d/photoeditor/an;

    .line 71
    :cond_1
    return-void
.end method

.method public static showDialog()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 47
    sget-object v0, Lcom/android/gallery3d/photoeditor/an;->AM:Lcom/android/gallery3d/photoeditor/an;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lcom/android/gallery3d/photoeditor/an;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/an;-><init>()V

    sput-object v0, Lcom/android/gallery3d/photoeditor/an;->AM:Lcom/android/gallery3d/photoeditor/an;

    .line 49
    sget-object v0, Lcom/android/gallery3d/photoeditor/an;->AM:Lcom/android/gallery3d/photoeditor/an;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/an;->setCancelable(Z)V

    .line 50
    sget-object v0, Lcom/android/gallery3d/photoeditor/an;->AM:Lcom/android/gallery3d/photoeditor/an;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/an;->show()V

    move v0, v1

    .line 52
    :goto_0
    sget-object v2, Lcom/android/gallery3d/photoeditor/an;->AL:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 53
    sget-object v2, Lcom/android/gallery3d/photoeditor/an;->AL:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    sget-object v3, Lcom/android/gallery3d/photoeditor/an;->AM:Lcom/android/gallery3d/photoeditor/an;

    iget-object v3, v3, Lcom/android/gallery3d/photoeditor/an;->AN:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 83
    sget-object v0, Lcom/android/gallery3d/photoeditor/an;->AL:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
