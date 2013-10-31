.class Lcom/android/gallery3d/ui/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic xs:Lcom/android/gallery3d/ui/bd;

.field final synthetic zy:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/bd;Landroid/view/ActionMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/gallery3d/ui/cy;->xs:Lcom/android/gallery3d/ui/bd;

    iput-object p2, p0, Lcom/android/gallery3d/ui/cy;->zy:Landroid/view/ActionMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/ui/cy;->xs:Lcom/android/gallery3d/ui/bd;

    iget-object v1, p0, Lcom/android/gallery3d/ui/cy;->zy:Landroid/view/ActionMode;

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/ui/bd;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
