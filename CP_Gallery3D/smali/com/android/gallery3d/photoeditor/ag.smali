.class Lcom/android/gallery3d/photoeditor/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic rT:Lcom/android/gallery3d/photoeditor/ab;

.field final synthetic sd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/ab;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/ag;->rT:Lcom/android/gallery3d/photoeditor/ab;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/ag;->sd:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ag;->sd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 22
    return-void
.end method
