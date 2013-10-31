.class public Lcom/android/gallery3d/ui/el;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Gy:Landroid/widget/Button;

.field private Gz:Landroid/widget/PopupMenu;

.field private oI:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/android/gallery3d/ui/el;->Gy:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/el;->Gy:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/ui/el;->Gy:Landroid/widget/Button;

    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/el;->Gz:Landroid/widget/PopupMenu;

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/el;->Gz:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/el;->oI:Landroid/view/Menu;

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/ui/el;->Gz:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/el;->oI:Landroid/view/Menu;

    invoke-virtual {v0, p3, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/el;->Gz:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/el;->Gy:Landroid/widget/Button;

    new-instance v1, Lcom/android/gallery3d/ui/j;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/j;-><init>(Lcom/android/gallery3d/ui/el;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/el;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/el;->Gz:Landroid/widget/PopupMenu;

    return-object v0
.end method


# virtual methods
.method public findItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/ui/el;->oI:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/ui/el;->Gy:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
