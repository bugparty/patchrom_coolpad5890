.class public Lcom/android/gallery3d/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/az;


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogDetailsView"


# instance fields
.field private final dM:Lcom/android/gallery3d/app/bm;

.field private eD:Lcom/android/gallery3d/ui/l;

.field private eE:Lcom/android/gallery3d/a/cw;

.field private final eF:Lcom/android/gallery3d/ui/bt;

.field private eG:Lcom/android/gallery3d/ui/ea;

.field private mDialog:Landroid/app/Dialog;

.field private mIndex:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/bt;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/ui/q;->dM:Lcom/android/gallery3d/app/bm;

    .line 59
    iput-object p2, p0, Lcom/android/gallery3d/ui/q;->eF:Lcom/android/gallery3d/ui/bt;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/q;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(Lcom/android/gallery3d/a/cw;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 91
    new-instance v0, Lcom/android/gallery3d/ui/l;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/ui/l;-><init>(Lcom/android/gallery3d/ui/q;Lcom/android/gallery3d/a/cw;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/q;->eD:Lcom/android/gallery3d/ui/l;

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->dM:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/gallery3d/ui/q;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/gallery3d/ui/q;->eF:Lcom/android/gallery3d/ui/bt;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/bt;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->dM:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040009

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 97
    iget-object v1, p0, Lcom/android/gallery3d/ui/q;->eD:Lcom/android/gallery3d/ui/l;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/gallery3d/ui/q;->dM:Lcom/android/gallery3d/app/bm;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0050

    new-instance v2, Lcom/android/gallery3d/ui/ac;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/ac;-><init>(Lcom/android/gallery3d/ui/q;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/q;->mDialog:Landroid/app/Dialog;

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/gallery3d/ui/ad;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/ad;-><init>(Lcom/android/gallery3d/ui/q;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/q;)Lcom/android/gallery3d/ui/ea;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->eG:Lcom/android/gallery3d/ui/ea;

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/q;)Lcom/android/gallery3d/app/bm;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->dM:Lcom/android/gallery3d/app/bm;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/ui/q;)Lcom/android/gallery3d/a/cw;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->eE:Lcom/android/gallery3d/a/cw;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/ea;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/gallery3d/ui/q;->eG:Lcom/android/gallery3d/ui/ea;

    .line 243
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 69
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->eF:Lcom/android/gallery3d/ui/bt;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/bt;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/q;->w(I)V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 65
    return-void
.end method

.method public w(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xb

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->eF:Lcom/android/gallery3d/ui/bt;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/bt;->H(I)I

    move-result v0

    .line 73
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/q;->eF:Lcom/android/gallery3d/ui/bt;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/bt;->aq()Lcom/android/gallery3d/a/cw;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/a/cw;->bf(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {v1, v3}, Lcom/android/gallery3d/a/cw;->bf(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 78
    :cond_2
    if-eqz v1, :cond_0

    .line 79
    iget v2, p0, Lcom/android/gallery3d/ui/q;->mIndex:I

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/ui/q;->eE:Lcom/android/gallery3d/a/cw;

    if-eq v2, v1, :cond_0

    .line 80
    :cond_3
    iput v0, p0, Lcom/android/gallery3d/ui/q;->mIndex:I

    .line 81
    iput-object v1, p0, Lcom/android/gallery3d/ui/q;->eE:Lcom/android/gallery3d/a/cw;

    .line 82
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/q;->a(Lcom/android/gallery3d/a/cw;)V

    goto :goto_0
.end method
