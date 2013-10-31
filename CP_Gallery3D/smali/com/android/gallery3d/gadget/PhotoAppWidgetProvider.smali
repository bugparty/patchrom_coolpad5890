.class public Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoAppWidgetProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;ILcom/android/gallery3d/gadget/b;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iget v0, p2, Lcom/android/gallery3d/gadget/b;->type:I

    packed-switch v0, :pswitch_data_0

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/gallery3d/gadget/b;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;->b(Landroid/content/Context;ILcom/android/gallery3d/gadget/b;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;->c(Landroid/content/Context;ILcom/android/gallery3d/gadget/b;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;ILcom/android/gallery3d/gadget/b;)Landroid/widget/RemoteViews;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0a0006

    .line 78
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040003

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/gallery3d/gadget/WidgetService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string v2, "widget-type"

    iget v3, p2, Lcom/android/gallery3d/gadget/b;->type:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    const-string v2, "album-path"

    iget-object v3, p2, Lcom/android/gallery3d/gadget/b;->pL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget://gallery/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 88
    const v1, 0x7f0a0004

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/gallery3d/gadget/WidgetClickHandler;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 95
    return-object v0
.end method

.method static c(Landroid/content/Context;ILcom/android/gallery3d/gadget/b;)Landroid/widget/RemoteViews;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f04000f

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 102
    :try_start_0
    iget-object v0, p2, Lcom/android/gallery3d/gadget/b;->pK:[B

    .line 103
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    const v2, 0x7f0a0016

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    iget-object v0, p2, Lcom/android/gallery3d/gadget/b;->pJ:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    :try_start_1
    iget-object v0, p2, Lcom/android/gallery3d/gadget/b;->pJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/gallery3d/gadget/WidgetClickHandler;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 114
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 116
    const v2, 0x7f0a0016

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :cond_0
    :goto_1
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string v2, "PhotoAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot load widget image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    .line 118
    const-string v2, "PhotoAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot load widget uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 127
    new-instance v1, Lcom/android/gallery3d/gadget/m;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/gadget/m;-><init>(Landroid/content/Context;)V

    .line 128
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p2, v0

    .line 129
    invoke-virtual {v1, v3}, Lcom/android/gallery3d/gadget/m;->bj(I)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/m;->close()V

    .line 132
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v1, Lcom/android/gallery3d/gadget/m;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/gadget/m;-><init>(Landroid/content/Context;)V

    .line 55
    :try_start_0
    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p3, v0

    .line 56
    invoke-virtual {v1, v3}, Lcom/android/gallery3d/gadget/m;->bi(I)Lcom/android/gallery3d/gadget/b;

    move-result-object v4

    .line 57
    if-eqz v4, :cond_0

    .line 58
    invoke-static {p1, v3, v4}, Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;->a(Landroid/content/Context;ILcom/android/gallery3d/gadget/b;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 59
    invoke-virtual {p2, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 55
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 63
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f040003

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 65
    const v6, 0x7f0a0006

    const v7, 0x7f0a0004

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 66
    invoke-virtual {v4, v3, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 68
    const-string v4, "PhotoAppWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot load widget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/m;->close()V

    throw v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/m;->close()V

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 75
    return-void
.end method
