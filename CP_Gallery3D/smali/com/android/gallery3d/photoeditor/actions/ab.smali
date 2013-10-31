.class Lcom/android/gallery3d/photoeditor/actions/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/ad;


# instance fields
.field final synthetic xp:Lcom/android/gallery3d/photoeditor/filters/HighlightFilter;

.field final synthetic xq:Lcom/android/gallery3d/photoeditor/actions/HighlightAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/HighlightAction;Lcom/android/gallery3d/photoeditor/filters/HighlightFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/ab;->xq:Lcom/android/gallery3d/photoeditor/actions/HighlightAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/ab;->xp:Lcom/android/gallery3d/photoeditor/filters/HighlightFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(FZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    if-eqz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ab;->xp:Lcom/android/gallery3d/photoeditor/filters/HighlightFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/HighlightFilter;->setScale(F)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ab;->xq:Lcom/android/gallery3d/photoeditor/actions/HighlightAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/ab;->xp:Lcom/android/gallery3d/photoeditor/filters/HighlightFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/HighlightAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 50
    :cond_0
    return-void
.end method
