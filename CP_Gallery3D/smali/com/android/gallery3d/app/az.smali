.class Lcom/android/gallery3d/app/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field private final ox:Landroid/graphics/RectF;

.field final synthetic oy:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p2, p0, Lcom/android/gallery3d/app/az;->ox:Landroid/graphics/RectF;

    .line 268
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/az;->j(Lcom/android/gallery3d/b/j;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public j(Lcom/android/gallery3d/b/j;)Landroid/content/Intent;
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/app/az;->ox:Landroid/graphics/RectF;

    .line 272
    iget-object v3, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 273
    new-instance v7, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v8, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v7, v3, v5, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 277
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 278
    const-string v0, "cropped-rect"

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    if-eqz v6, :cond_e

    .line 282
    const-string v0, "output"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 283
    if-eqz v0, :cond_d

    .line 284
    const-string v3, "CropImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-object v4

    .line 287
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v3, v7}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 288
    iget-object v8, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v8, p1, v3, v0}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 290
    :goto_1
    const-string v8, "return-data"

    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 291
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v0, v7}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 294
    :cond_2
    const-string v0, "data"

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move v0, v1

    .line 297
    :cond_3
    const-string v8, "set-as-wallpaper"

    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 298
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v0, v7}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 301
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v0, p1, v3}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    move-object v0, v3

    .line 315
    :goto_2
    if-nez v1, :cond_7

    .line 316
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v0, v7}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v1, p1, v0}, Lcom/android/gallery3d/app/CropImage;->d(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_7

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_7
    move-object v4, v5

    .line 321
    goto :goto_0

    .line 302
    :cond_8
    const-string v8, "set-as-keyguard-wallpaper"

    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 303
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v0, v7}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 306
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v0, p1, v3}, Lcom/android/gallery3d/app/CropImage;->b(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    .line 307
    :cond_a
    const-string v8, "set-as-launchermenu-wallpaper"

    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 308
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    if-nez v3, :cond_b

    iget-object v0, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v0, v7}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 311
    :cond_b
    iget-object v0, p0, Lcom/android/gallery3d/app/az;->oy:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v0, p1, v3}, Lcom/android/gallery3d/app/CropImage;->c(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_c
    move v1, v0

    move-object v0, v3

    goto :goto_2

    :cond_d
    move v0, v2

    move-object v3, v4

    goto/16 :goto_1

    :cond_e
    move v1, v2

    move-object v0, v4

    goto :goto_2
.end method
