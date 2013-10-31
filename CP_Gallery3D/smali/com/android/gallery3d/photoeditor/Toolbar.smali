.class public Lcom/android/gallery3d/photoeditor/Toolbar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final Ja:Lcom/android/gallery3d/photoeditor/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/android/gallery3d/photoeditor/g;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/photoeditor/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->Ja:Lcom/android/gallery3d/photoeditor/g;

    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->Ja:Lcom/android/gallery3d/photoeditor/g;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->Ja:Lcom/android/gallery3d/photoeditor/g;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/g;->bX()V

    .line 47
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->Ja:Lcom/android/gallery3d/photoeditor/g;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/g;->bX()V

    .line 52
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
