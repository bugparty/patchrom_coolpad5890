.class Lcom/android/gallery3d/app/el;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/ea;


# instance fields
.field final synthetic nS:Lcom/android/gallery3d/app/ca;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/gallery3d/app/el;->nS:Lcom/android/gallery3d/app/ca;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/gallery3d/app/el;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->m(Lcom/android/gallery3d/app/ca;)V

    .line 659
    return-void
.end method
