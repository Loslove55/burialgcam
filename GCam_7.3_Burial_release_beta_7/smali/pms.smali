.class public final Lpms;
.super Ljava/lang/Object;

# interfaces
.implements Lpnh;


# instance fields
.field private final a:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpms;->a:Lpnh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpms;->a:Lpnh;

    invoke-static {v0}, Lpmn;->b(Lpnh;)Lpmj;

    move-result-object v0

    return-object v0
.end method
