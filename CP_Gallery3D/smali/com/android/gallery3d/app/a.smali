.class Lcom/android/gallery3d/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic c:Lcom/android/gallery3d/app/ch;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/android/gallery3d/app/ag;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ag;Lcom/android/gallery3d/app/ch;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/gallery3d/app/a;->e:Lcom/android/gallery3d/app/ag;

    iput-object p2, p0, Lcom/android/gallery3d/app/a;->c:Lcom/android/gallery3d/app/ch;

    iput-object p3, p0, Lcom/android/gallery3d/app/a;->d:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/gallery3d/app/a;->c:Lcom/android/gallery3d/app/ch;

    iget-object v0, p0, Lcom/android/gallery3d/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/ch;->N(I)V

    .line 270
    return-void
.end method
