.class public Lcom/android/gallery3d/gadget/WidgetConfigure;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final RESULT_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WidgetConfigure"

.field public static final bb:Ljava/lang/String; = "widget-type"

.field private static final bc:I = 0x1

.field private static final bd:I = 0x2

.field private static final be:I = 0x3

.field private static final bf:I = 0x4

.field private static bg:F = 0.0f

.field private static bh:I = 0x0

.field private static final bk:I = 0x0

.field private static final bl:I = 0x1

.field private static final bm:[Ljava/lang/String; = null

.field private static final bn:Ljava/lang/String; = "1) GROUP BY 1,(2"

.field private static final bo:Ljava/lang/String; = "MAX(datetaken) DESC"


# instance fields
.field private bi:I

.field private bj:Landroid/net/Uri;

.field private mAppWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/high16 v0, 0x3fc0

    sput v0, Lcom/android/gallery3d/gadget/WidgetConfigure;->bg:F

    .line 59
    const/16 v0, 0x168

    sput v0, Lcom/android/gallery3d/gadget/WidgetConfigure;->bh:I

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/gadget/WidgetConfigure;->bm:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->bi:I

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 126
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 127
    new-instance v1, Lcom/android/gallery3d/gadget/m;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/m;-><init>(Landroid/content/Context;)V

    .line 129
    :try_start_0
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->bj:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/gadget/m;->a(ILandroid/net/Uri;Landroid/graphics/Bitmap;)Z

    .line 130
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/gadget/m;->bi(I)Lcom/android/gallery3d/gadget/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->a(Lcom/android/gallery3d/gadget/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/m;->close()V

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/m;->close()V

    throw v0
.end method

.method private a(Lcom/android/gallery3d/gadget/b;)V
    .locals 4
    .parameter

    .prologue
    .line 94
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 95
    iget v1, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-static {p0, v1, p1}, Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;->a(Landroid/content/Context;ILcom/android/gallery3d/gadget/b;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 96
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 97
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->finish()V

    .line 100
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 142
    const v2, 0x7f080001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 146
    sget v2, Lcom/android/gallery3d/gadget/WidgetConfigure;->bg:F

    sget v3, Lcom/android/gallery3d/gadget/WidgetConfigure;->bh:I

    int-to-float v3, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 149
    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 150
    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->bj:Landroid/net/Uri;

    .line 152
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    iget-object v4, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->bj:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "outputX"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "outputY"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "aspectX"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "aspectY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scaleUpIfNeeded"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 160
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v1, "WidgetConfigure"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :catch_1
    move-exception v0

    .line 164
    const-string v1, "WidgetConfigure"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 170
    const-string v0, "album-path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/android/gallery3d/gadget/m;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/m;-><init>(Landroid/content/Context;)V

    .line 173
    :try_start_0
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/gadget/m;->a(IILjava/lang/String;)Z

    .line 175
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/gadget/m;->bi(I)Lcom/android/gallery3d/gadget/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->a(Lcom/android/gallery3d/gadget/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/m;->close()V

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/m;->close()V

    throw v0
.end method

.method private d(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0a000b

    const/4 v2, 0x2

    .line 182
    const-string v0, "widget-type"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->bi:I

    .line 183
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->bi:I

    const v1, 0x7f0a0009

    if-ne v0, v1, :cond_0

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/AlbumPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    :goto_0
    return-void

    .line 186
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->bi:I

    if-ne v0, v3, :cond_2

    .line 187
    new-instance v1, Lcom/android/gallery3d/gadget/m;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/m;-><init>(Landroid/content/Context;)V

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->D()Ljava/util/ArrayList;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/gallery3d/app/AlbumPicker;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_1
    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/m;->close()V

    goto :goto_0

    .line 194
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/gallery3d/gadget/m;->a(IILjava/lang/String;)Z

    .line 195
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/gadget/m;->bi(I)Lcom/android/gallery3d/gadget/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->a(Lcom/android/gallery3d/gadget/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 199
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/m;->close()V

    throw v0

    .line 203
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/DialogPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 206
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public D()Ljava/util/ArrayList;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 215
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 217
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 221
    :try_start_0
    sget-object v2, Lcom/android/gallery3d/gadget/WidgetConfigure;->bm:[Ljava/lang/String;

    const-string v3, "1) GROUP BY 1,(2"

    const/4 v4, 0x0

    const-string v5, "MAX(datetaken) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 224
    if-nez v1, :cond_1

    .line 225
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    if-eqz v1, :cond_0

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    :goto_2
    :try_start_3
    const-string v2, "WidgetConfigure"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 234
    if-eqz v1, :cond_2

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    move-object v0, v6

    .line 239
    goto :goto_0

    .line 234
    :cond_3
    if-eqz v1, :cond_2

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 234
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_4

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_4
    throw v0

    .line 234
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 231
    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->finish()V

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 112
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->d(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 114
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 116
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 118
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    .line 81
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    if-ne v0, v2, :cond_1

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setResult(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->finish()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->bi:I

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
