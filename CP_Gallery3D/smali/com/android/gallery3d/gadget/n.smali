.class Lcom/android/gallery3d/gadget/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/android/gallery3d/a/an;


# instance fields
.field private final JG:Ljava/lang/String;

.field private final JH:Lcom/android/gallery3d/app/cl;

.field private JI:Lcom/android/gallery3d/gadget/l;

.field private final mAppWidgetId:I

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/cl;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/gallery3d/gadget/n;->JH:Lcom/android/gallery3d/app/cl;

    .line 92
    iput p2, p0, Lcom/android/gallery3d/gadget/n;->mAppWidgetId:I

    .line 93
    iput p3, p0, Lcom/android/gallery3d/gadget/n;->mType:I

    .line 94
    iput-object p4, p0, Lcom/android/gallery3d/gadget/n;->JG:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public aW()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/gadget/n;->JH:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/gadget/n;->mAppWidgetId:I

    const v2, 0x7f0a0006

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 177
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/gadget/n;->JI:Lcom/android/gallery3d/gadget/l;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/l;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 126
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/gallery3d/gadget/n;->JH:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040002

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 141
    const v1, 0x7f0a0003

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 142
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 5
    .parameter

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lcom/android/gallery3d/gadget/n;->JI:Lcom/android/gallery3d/gadget/l;

    if-eqz v1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/gadget/n;->JI:Lcom/android/gallery3d/gadget/l;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/gadget/l;->W(I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 152
    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/n;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 164
    :goto_1
    return-object v0

    .line 153
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/gallery3d/gadget/n;->JH:Lcom/android/gallery3d/app/cl;

    invoke-interface {v2}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040004

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 157
    const v2, 0x7f0a0005

    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 158
    const v1, 0x7f0a0005

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/gadget/n;->JI:Lcom/android/gallery3d/gadget/l;

    invoke-interface {v3, p1}, Lcom/android/gallery3d/gadget/l;->V(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 161
    :catch_0
    move-exception v1

    .line 162
    const-string v2, "GalleryAppWidgetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 99
    iget v0, p0, Lcom/android/gallery3d/gadget/n;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/gadget/n;->JG:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/gallery3d/gadget/n;->JH:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    .line 103
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/gadget/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/gadget/d;-><init>(Lcom/android/gallery3d/gadget/k;)V

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/gadget/n;->JI:Lcom/android/gallery3d/gadget/l;

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/gadget/n;->JI:Lcom/android/gallery3d/gadget/l;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/gadget/l;->c(Lcom/android/gallery3d/a/an;)V

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/gadget/n;->JH:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/gadget/n;->mAppWidgetId:I

    const v2, 0x7f0a0006

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 113
    return-void

    .line 103
    :cond_0
    new-instance v1, Lcom/android/gallery3d/gadget/f;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/gadget/f;-><init>(Lcom/android/gallery3d/a/r;)V

    move-object v0, v1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Lcom/android/gallery3d/gadget/a;

    iget-object v1, p0, Lcom/android/gallery3d/gadget/n;->JH:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/gadget/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/gadget/n;->JI:Lcom/android/gallery3d/gadget/l;

    goto :goto_1
.end method

.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/gadget/n;->JI:Lcom/android/gallery3d/gadget/l;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/l;->reload()V

    .line 170
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/gadget/n;->JI:Lcom/android/gallery3d/gadget/l;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/l;->close()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/n;->JI:Lcom/android/gallery3d/gadget/l;

    .line 119
    return-void
.end method
