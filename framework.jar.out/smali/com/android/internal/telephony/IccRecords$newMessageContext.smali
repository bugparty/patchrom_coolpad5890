.class public Lcom/android/internal/telephony/IccRecords$newMessageContext;
.super Ljava/lang/Object;
.source "IccRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "newMessageContext"
.end annotation


# instance fields
.field public isNewSms:Z

.field public msgIndex:I

.field final synthetic this$0:Lcom/android/internal/telephony/IccRecords;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccRecords;ZI)V
    .locals 1
    .parameter
    .parameter "isNew"
    .parameter "index"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords$newMessageContext;->this$0:Lcom/android/internal/telephony/IccRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords$newMessageContext;->isNewSms:Z

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords$newMessageContext;->msgIndex:I

    .line 149
    iput-boolean p2, p0, Lcom/android/internal/telephony/IccRecords$newMessageContext;->isNewSms:Z

    .line 150
    iput p3, p0, Lcom/android/internal/telephony/IccRecords$newMessageContext;->msgIndex:I

    .line 151
    return-void
.end method
