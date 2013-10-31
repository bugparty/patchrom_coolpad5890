.class Lcom/android/gallery3d/app/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/an;


# instance fields
.field final synthetic gD:Lcom/android/gallery3d/app/aj;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/gallery3d/app/ac;->gD:Lcom/android/gallery3d/app/aj;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/aj;Lcom/android/gallery3d/app/bx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ac;-><init>(Lcom/android/gallery3d/app/aj;)V

    return-void
.end method


# virtual methods
.method public aW()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/app/ac;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->b(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/app/cc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/ac;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->b(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/app/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/cc;->G()V

    .line 191
    :cond_0
    return-void
.end method
