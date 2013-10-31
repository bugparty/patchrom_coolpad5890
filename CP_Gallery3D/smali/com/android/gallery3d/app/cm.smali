.class Lcom/android/gallery3d/app/cm;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/android/gallery3d/app/ag;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/app/cm;->e:Lcom/android/gallery3d/app/ag;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/ag;Lcom/android/gallery3d/app/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/cm;-><init>(Lcom/android/gallery3d/app/ag;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/android/gallery3d/app/ag;->bn()[Lcom/android/gallery3d/app/dn;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-static {}, Lcom/android/gallery3d/app/ag;->bn()[Lcom/android/gallery3d/app/dn;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 112
    invoke-static {}, Lcom/android/gallery3d/app/ag;->bn()[Lcom/android/gallery3d/app/dn;

    move-result-object v0

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/gallery3d/app/dn;->action:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    if-nez p2, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/app/cm;->e:Lcom/android/gallery3d/app/ag;

    invoke-static {v0}, Lcom/android/gallery3d/app/ag;->a(Lcom/android/gallery3d/app/ag;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f04

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 120
    check-cast v0, Landroid/widget/TextView;

    .line 121
    invoke-static {}, Lcom/android/gallery3d/app/ag;->bn()[Lcom/android/gallery3d/app/dn;

    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/android/gallery3d/app/cm;->e:Lcom/android/gallery3d/app/ag;

    invoke-static {v3}, Lcom/android/gallery3d/app/ag;->b(Lcom/android/gallery3d/app/ag;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-static {}, Lcom/android/gallery3d/app/ag;->bo()[Lcom/android/gallery3d/app/dn;

    move-result-object v2

    .line 125
    :cond_0
    aget-object v2, v2, p1

    iget v2, v2, Lcom/android/gallery3d/app/dn;->CM:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method
