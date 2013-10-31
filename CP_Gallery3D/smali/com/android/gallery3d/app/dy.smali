.class Lcom/android/gallery3d/app/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Fk:Lcom/android/gallery3d/app/Gallery;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/gallery3d/app/dy;->Fk:Lcom/android/gallery3d/app/Gallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/app/dy;->Fk:Lcom/android/gallery3d/app/Gallery;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/Gallery;->dv()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    const-string v3, "file:///mnt/sdcard"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    const-string v0, "Gallery"

    const-string v1, "sendbroadcast"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method
