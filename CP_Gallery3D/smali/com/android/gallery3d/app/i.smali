.class Lcom/android/gallery3d/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/app/ad;


# instance fields
.field final synthetic bU:Lcom/android/gallery3d/app/ak;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/gallery3d/app/i;->bU:Lcom/android/gallery3d/app/ak;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/ak;Lcom/android/gallery3d/app/bl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 787
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/i;-><init>(Lcom/android/gallery3d/app/ak;)V

    return-void
.end method


# virtual methods
.method public H()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/gallery3d/app/i;->bU:Lcom/android/gallery3d/app/ak;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/ak;->c(Lcom/android/gallery3d/app/ak;I)V

    .line 790
    return-void
.end method

.method public I()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/gallery3d/app/i;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0}, Lcom/android/gallery3d/app/ak;->l(Lcom/android/gallery3d/app/ak;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/i;->bU:Lcom/android/gallery3d/app/ak;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/ak;->b(Lcom/android/gallery3d/app/ak;I)V

    goto :goto_0
.end method
