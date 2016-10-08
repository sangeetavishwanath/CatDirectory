#import <Specta/Specta.h>
#import <Expecta/Expecta.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>

#import "PetTypeModel.h"

SpecBegin(PetTypeModelTests)

describe(@"PetTypeModel", ^{

    describe(@"PetTypeFromString:", ^{

        context(@"when provided with the string Cat", ^{

            it(@"will return PetType - PetTypeCat", ^{

                PetType gender = [PetTypeModel petTypeFromString:@"Cat"];
                expect(gender).to.equal(PetTypeCat);
            });
        });

        context(@"when provided with the string CaT", ^{

            it(@"will return PetType - PetTypeCat", ^{

                PetType gender = [PetTypeModel petTypeFromString:@"CaT"];
                expect(gender).to.equal(PetTypeCat);
            });
        });

        context(@"when provided with the string dog", ^{

            it(@"will return PetType - PetTypeDog", ^{

                PetType gender = [PetTypeModel petTypeFromString:@"dog"];
                expect(gender).to.equal(PetTypeDog);
            });
        });

        context(@"when provided with the string DOG", ^{

            it(@"will return PetType - PetTypeDog", ^{

                PetType gender = [PetTypeModel petTypeFromString:@"DOG"];
                expect(gender).to.equal(PetTypeDog);
            });
        });

        context(@"when provided with any other string", ^{

            it(@"will return PetType - PetTypeUnknown", ^{

                PetType gender = [PetTypeModel petTypeFromString:@"random"];
                expect(gender).to.equal(PetTypeUnknown);
            });
        });
    });
});

SpecEnd
