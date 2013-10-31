.class Lcom/android/gallery3d/app/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/aw;


# instance fields
.field final synthetic eb:Lcom/android/gallery3d/app/da;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/da;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/gallery3d/app/q;->eb:Lcom/android/gallery3d/app/da;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/gallery3d/app/q;->eb:Lcom/android/gallery3d/app/da;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/da;->c(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
