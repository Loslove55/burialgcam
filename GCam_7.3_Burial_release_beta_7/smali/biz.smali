.class final synthetic Lbiz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbja;


# direct methods
.method public constructor <init>(Lbja;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbiz;->a:Lbja;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbiz;->a:Lbja;

    invoke-virtual {v0}, Lbja;->a()V

    return-void
.end method
