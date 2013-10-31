.class Lcom/android/gallery3d/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/a;


# instance fields
.field hx:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/a/v;->hx:Landroid/graphics/BitmapFactory$Options;

    .line 46
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/a/v;->hx:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 49
    return-void
.end method
