.class Lcom/android/gallery3d/app/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/ea;


# instance fields
.field final synthetic eb:Lcom/android/gallery3d/app/da;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/da;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/gallery3d/app/x;->eb:Lcom/android/gallery3d/app/da;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/gallery3d/app/x;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v0}, Lcom/android/gallery3d/app/da;->h(Lcom/android/gallery3d/app/da;)V

    .line 525
    return-void
.end method
