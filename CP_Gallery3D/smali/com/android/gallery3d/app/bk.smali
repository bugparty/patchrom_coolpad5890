.class Lcom/android/gallery3d/app/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/app/ad;


# instance fields
.field final synthetic eb:Lcom/android/gallery3d/app/da;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/da;)V
    .locals 0
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/gallery3d/app/bk;->eb:Lcom/android/gallery3d/app/da;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/da;Lcom/android/gallery3d/app/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/bk;-><init>(Lcom/android/gallery3d/app/da;)V

    return-void
.end method


# virtual methods
.method public H()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/gallery3d/app/bk;->eb:Lcom/android/gallery3d/app/da;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/da;->c(Lcom/android/gallery3d/app/da;I)V

    .line 737
    return-void
.end method

.method public I()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/gallery3d/app/bk;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v0}, Lcom/android/gallery3d/app/da;->i(Lcom/android/gallery3d/app/da;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/bk;->eb:Lcom/android/gallery3d/app/da;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/da;->b(Lcom/android/gallery3d/app/da;I)V

    goto :goto_0
.end method
