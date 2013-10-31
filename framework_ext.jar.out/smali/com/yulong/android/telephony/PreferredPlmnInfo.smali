.class public Lcom/yulong/android/telephony/PreferredPlmnInfo;
.super Ljava/lang/Object;
.source "PreferredPlmnInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/telephony/PreferredPlmnInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field format:I

.field gsmAct:I

.field gsmCompactAct:I

.field index:I

.field oper:Ljava/lang/String;

.field utranAct:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/yulong/android/telephony/PreferredPlmnInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/PreferredPlmnInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;III)V
    .locals 1
    .parameter "index"
    .parameter "Format"
    .parameter "oper"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->index:I

    .line 48
    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    .line 50
    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmAct:I

    .line 51
    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    .line 52
    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->utranAct:I

    .line 86
    iput p1, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->index:I

    .line 87
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    .line 88
    iput-object p3, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->oper:Ljava/lang/String;

    .line 89
    iput p4, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmAct:I

    .line 90
    iput p5, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    .line 91
    iput p6, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->utranAct:I

    .line 92
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    return v0
.end method

.method public getGsmAct()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmAct:I

    return v0
.end method

.method public getGsmCompactAct()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->index:I

    return v0
.end method

.method public getOper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->oper:Ljava/lang/String;

    return-object v0
.end method

.method public getUtranAct()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->utranAct:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 109
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->oper:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->utranAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return-void
.end method
