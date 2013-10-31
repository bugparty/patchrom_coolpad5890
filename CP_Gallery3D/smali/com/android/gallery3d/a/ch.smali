.class Lcom/android/gallery3d/a/ch;
.super Lcom/android/gallery3d/a/ci;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UriSource"


# instance fields
.field private i:Lcom/android/gallery3d/app/cl;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/cl;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    const-string v0, "uri"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/ci;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/a/ch;->i:Lcom/android/gallery3d/app/cl;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;
    .locals 3
    .parameter

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/android/gallery3d/a/dd;->gx()[Ljava/lang/String;

    move-result-object v0

    .line 43
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/android/gallery3d/a/p;

    iget-object v2, p0, Lcom/android/gallery3d/a/ch;->i:Lcom/android/gallery3d/app/cl;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, p1, v0}, Lcom/android/gallery3d/a/p;-><init>(Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/dd;Landroid/net/Uri;)V

    return-object v1
.end method

.method public e(Landroid/net/Uri;)Lcom/android/gallery3d/a/dd;
    .locals 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/a/ch;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/uri/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
