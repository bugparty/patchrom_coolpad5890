.class public Lcom/android/gallery3d/gadget/WidgetService;
.super Landroid/widget/RemoteViewsService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryAppWidgetService"

.field public static final cv:Ljava/lang/String; = "widget-type"

.field public static final cw:Ljava/lang/String; = "album-path"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 44
    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 46
    const-string v0, "widget-type"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 47
    const-string v0, "album-path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    new-instance v4, Lcom/android/gallery3d/gadget/n;

    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/cl;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/gallery3d/gadget/n;-><init>(Lcom/android/gallery3d/app/cl;IILjava/lang/String;)V

    return-object v4
.end method
