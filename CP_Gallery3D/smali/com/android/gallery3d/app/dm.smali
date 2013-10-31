.class Lcom/android/gallery3d/app/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Ch:Lcom/android/gallery3d/app/de;

.field final synthetic Cu:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/de;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/gallery3d/app/dm;->Ch:Lcom/android/gallery3d/app/de;

    iput p2, p0, Lcom/android/gallery3d/app/dm;->Cu:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/app/dm;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->a(Lcom/android/gallery3d/app/de;)Landroid/widget/VideoView;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/dm;->Cu:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/dm;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->g(Lcom/android/gallery3d/app/de;)V

    .line 193
    return-void
.end method
