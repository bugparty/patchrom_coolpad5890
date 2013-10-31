.class Lcom/android/gallery3d/photoeditor/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic jl:I

.field final synthetic jm:Lcom/android/gallery3d/photoeditor/y;

.field final synthetic jn:I

.field final synthetic jo:Lcom/android/gallery3d/photoeditor/EffectsMenu;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsMenu;ILcom/android/gallery3d/photoeditor/y;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/f;->jo:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    iput p2, p0, Lcom/android/gallery3d/photoeditor/f;->jl:I

    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/f;->jm:Lcom/android/gallery3d/photoeditor/y;

    iput p4, p0, Lcom/android/gallery3d/photoeditor/f;->jn:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/f;->jo:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/f;->jl:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/f;->jo:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/f;->jl:I

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/f;->jm:Lcom/android/gallery3d/photoeditor/y;

    iget v4, p0, Lcom/android/gallery3d/photoeditor/f;->jn:I

    invoke-interface {v3, v0, v4}, Lcom/android/gallery3d/photoeditor/y;->a(ZI)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->f(IZ)V

    .line 84
    return-void
.end method
