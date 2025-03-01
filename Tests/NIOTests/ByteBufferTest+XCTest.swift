//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftNIO open source project
//
// Copyright (c) 2017-2018 Apple Inc. and the SwiftNIO project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftNIO project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//
//
// ByteBufferTest+XCTest.swift
//
import XCTest

///
/// NOTE: This file was generated by generate_linux_tests.rb
///
/// Do NOT edit this file directly as it will be regenerated automatically when needed.
///

extension ByteBufferTest {

   @available(*, deprecated, message: "not actually deprecated. Just deprecated to allow deprecated tests (which test deprecated functionality) without warnings")
   static var allTests : [(String, (ByteBufferTest) -> () throws -> Void)] {
      return [
                ("testAllocateAndCount", testAllocateAndCount),
                ("testEqualsComparesReadBuffersOnly", testEqualsComparesReadBuffersOnly),
                ("testHasherUsesReadBuffersOnly", testHasherUsesReadBuffersOnly),
                ("testSimpleReadTest", testSimpleReadTest),
                ("testSimpleWrites", testSimpleWrites),
                ("testMakeSureUniquelyOwnedSliceDoesNotGetReallocatedOnWrite", testMakeSureUniquelyOwnedSliceDoesNotGetReallocatedOnWrite),
                ("testWriteToUniquelyOwnedSliceWhichTriggersAReallocation", testWriteToUniquelyOwnedSliceWhichTriggersAReallocation),
                ("testReadWrite", testReadWrite),
                ("testStaticStringReadTests", testStaticStringReadTests),
                ("testString", testString),
                ("testWriteSubstring", testWriteSubstring),
                ("testSetSubstring", testSetSubstring),
                ("testSliceEasy", testSliceEasy),
                ("testWriteStringMovesWriterIndex", testWriteStringMovesWriterIndex),
                ("testSetExpandsBufferOnUpperBoundsCheckFailure", testSetExpandsBufferOnUpperBoundsCheckFailure),
                ("testCoWWorks", testCoWWorks),
                ("testWithMutableReadPointerMovesReaderIndexAndReturnsNumBytesConsumed", testWithMutableReadPointerMovesReaderIndexAndReturnsNumBytesConsumed),
                ("testWithMutableWritePointerMovesWriterIndexAndReturnsNumBytesWritten", testWithMutableWritePointerMovesWriterIndexAndReturnsNumBytesWritten),
                ("testWithMutableWritePointerWithMinimumSpecifiedAdjustsCapacity", testWithMutableWritePointerWithMinimumSpecifiedAdjustsCapacity),
                ("testWithMutableWritePointerWithMinimumSpecifiedWhileAtMaxCapacity", testWithMutableWritePointerWithMinimumSpecifiedWhileAtMaxCapacity),
                ("testSetGetInt8", testSetGetInt8),
                ("testSetGetInt16", testSetGetInt16),
                ("testSetGetInt32", testSetGetInt32),
                ("testSetGetInt64", testSetGetInt64),
                ("testSetGetUInt8", testSetGetUInt8),
                ("testSetGetUInt16", testSetGetUInt16),
                ("testSetGetUInt32", testSetGetUInt32),
                ("testSetGetUInt64", testSetGetUInt64),
                ("testWriteReadInt8", testWriteReadInt8),
                ("testWriteReadInt16", testWriteReadInt16),
                ("testWriteReadInt32", testWriteReadInt32),
                ("testWriteReadInt64", testWriteReadInt64),
                ("testWriteReadUInt8", testWriteReadUInt8),
                ("testWriteReadUInt16", testWriteReadUInt16),
                ("testWriteReadUInt32", testWriteReadUInt32),
                ("testWriteReadUInt64", testWriteReadUInt64),
                ("testSlice", testSlice),
                ("testSliceWithParams", testSliceWithParams),
                ("testReadSlice", testReadSlice),
                ("testSliceNoCopy", testSliceNoCopy),
                ("testSetGetData", testSetGetData),
                ("testWriteReadData", testWriteReadData),
                ("testDiscardReadBytes", testDiscardReadBytes),
                ("testDiscardReadBytesCoW", testDiscardReadBytesCoW),
                ("testDiscardReadBytesSlice", testDiscardReadBytesSlice),
                ("testWithDataSlices", testWithDataSlices),
                ("testEndianness", testEndianness),
                ("testExpansion", testExpansion),
                ("testExpansion2", testExpansion2),
                ("testNotEnoughBytesToReadForIntegers", testNotEnoughBytesToReadForIntegers),
                ("testNotEnoughBytesToReadForData", testNotEnoughBytesToReadForData),
                ("testSlicesThatAreOutOfBands", testSlicesThatAreOutOfBands),
                ("testMutableBytesCoW", testMutableBytesCoW),
                ("testWritableBytesTriggersCoW", testWritableBytesTriggersCoW),
                ("testBufferWithZeroBytes", testBufferWithZeroBytes),
                ("testPastEnd", testPastEnd),
                ("testReadDataNotEnoughAvailable", testReadDataNotEnoughAvailable),
                ("testReadSliceNotEnoughAvailable", testReadSliceNotEnoughAvailable),
                ("testSetBuffer", testSetBuffer),
                ("testWriteBuffer", testWriteBuffer),
                ("testMisalignedIntegerRead", testMisalignedIntegerRead),
                ("testSetAndWriteBytes", testSetAndWriteBytes),
                ("testCopyBytesWithNegativeLength", testCopyBytesWithNegativeLength),
                ("testCopyBytesNonReadable", testCopyBytesNonReadable),
                ("testCopyBytes", testCopyBytes),
                ("testCopyZeroBytesOutOfBoundsIsOk", testCopyZeroBytesOutOfBoundsIsOk),
                ("testCopyBytesBeyondWriterIndex", testCopyBytesBeyondWriterIndex),
                ("testCopyBytesOverSelf", testCopyBytesOverSelf),
                ("testCopyBytesCoWs", testCopyBytesCoWs),
                ("testWriteABunchOfCollections", testWriteABunchOfCollections),
                ("testSetABunchOfCollections", testSetABunchOfCollections),
                ("testTryStringTooLong", testTryStringTooLong),
                ("testSetGetBytesAllFine", testSetGetBytesAllFine),
                ("testGetBytesTooLong", testGetBytesTooLong),
                ("testReadWriteBytesOkay", testReadWriteBytesOkay),
                ("testReadTooLong", testReadTooLong),
                ("testReadWithUnsafeReadableBytesVariantsNothingToRead", testReadWithUnsafeReadableBytesVariantsNothingToRead),
                ("testReadWithUnsafeReadableBytesVariantsSomethingToRead", testReadWithUnsafeReadableBytesVariantsSomethingToRead),
                ("testSomePotentialIntegerUnderOrOverflows", testSomePotentialIntegerUnderOrOverflows),
                ("testWriteForContiguousCollections", testWriteForContiguousCollections),
                ("testWriteForNonContiguousCollections", testWriteForNonContiguousCollections),
                ("testReadStringOkay", testReadStringOkay),
                ("testReadStringTooMuch", testReadStringTooMuch),
                ("testSetIntegerBeyondCapacity", testSetIntegerBeyondCapacity),
                ("testGetIntegerBeyondCapacity", testGetIntegerBeyondCapacity),
                ("testSetStringBeyondCapacity", testSetStringBeyondCapacity),
                ("testGetStringBeyondCapacity", testGetStringBeyondCapacity),
                ("testAllocationOfReallyBigByteBuffer", testAllocationOfReallyBigByteBuffer),
                ("testWritableBytesAccountsForSlicing", testWritableBytesAccountsForSlicing),
                ("testClearDupesStorageIfTheresTwoBuffersSharingStorage", testClearDupesStorageIfTheresTwoBuffersSharingStorage),
                ("testClearDoesNotDupeStorageIfTheresOnlyOneBuffer", testClearDoesNotDupeStorageIfTheresOnlyOneBuffer),
                ("testClearWithBiggerMinimumCapacityDupesStorageIfTheresTwoBuffersSharingStorage", testClearWithBiggerMinimumCapacityDupesStorageIfTheresTwoBuffersSharingStorage),
                ("testClearWithSmallerMinimumCapacityDupesStorageIfTheresTwoBuffersSharingStorage", testClearWithSmallerMinimumCapacityDupesStorageIfTheresTwoBuffersSharingStorage),
                ("testClearWithBiggerMinimumCapacityDoesNotDupeStorageIfTheresOnlyOneBuffer", testClearWithBiggerMinimumCapacityDoesNotDupeStorageIfTheresOnlyOneBuffer),
                ("testClearWithSmallerMinimumCapacityDoesNotDupeStorageIfTheresOnlyOneBuffer", testClearWithSmallerMinimumCapacityDoesNotDupeStorageIfTheresOnlyOneBuffer),
                ("testClearWithBiggerCapacityDoesReallocateStorageCorrectlyIfTheresOnlyOneBuffer", testClearWithBiggerCapacityDoesReallocateStorageCorrectlyIfTheresOnlyOneBuffer),
                ("testClearWithSmallerCapacityDoesReallocateStorageCorrectlyIfTheresOnlyOneBuffer", testClearWithSmallerCapacityDoesReallocateStorageCorrectlyIfTheresOnlyOneBuffer),
                ("testClearDoesAllocateStorageCorrectlyIfTheresTwoBuffersSharingStorage", testClearDoesAllocateStorageCorrectlyIfTheresTwoBuffersSharingStorage),
                ("testClearResetsTheSliceCapacityIfTheresOnlyOneBuffer", testClearResetsTheSliceCapacityIfTheresOnlyOneBuffer),
                ("testClearResetsTheSliceCapacityIfTheresTwoSlicesSharingStorage", testClearResetsTheSliceCapacityIfTheresTwoSlicesSharingStorage),
                ("testWeUseFastWriteForContiguousCollections", testWeUseFastWriteForContiguousCollections),
                ("testUnderestimatingSequenceWorks", testUnderestimatingSequenceWorks),
                ("testZeroSizeByteBufferResizes", testZeroSizeByteBufferResizes),
                ("testSpecifyTypesAndEndiannessForIntegerMethods", testSpecifyTypesAndEndiannessForIntegerMethods),
                ("testByteBufferFitsInACoupleOfEnums", testByteBufferFitsInACoupleOfEnums),
                ("testLargeSliceBegin16MBIsOkayAndDoesNotCopy", testLargeSliceBegin16MBIsOkayAndDoesNotCopy),
                ("testLargeSliceBeginMoreThan16MBIsOkay", testLargeSliceBeginMoreThan16MBIsOkay),
                ("testSliceOnSliceAfterHitting16MBMark", testSliceOnSliceAfterHitting16MBMark),
                ("testDiscardReadBytesOnConsumedBuffer", testDiscardReadBytesOnConsumedBuffer),
                ("testDumpBytesFormat", testDumpBytesFormat),
                ("testReadableBytesView", testReadableBytesView),
                ("testReadableBytesViewNoReadableBytes", testReadableBytesViewNoReadableBytes),
                ("testBytesView", testBytesView),
                ("testViewsStartIndexIsStable", testViewsStartIndexIsStable),
                ("testSlicesOfByteBufferViewsAreByteBufferViews", testSlicesOfByteBufferViewsAreByteBufferViews),
                ("testReadableBufferViewRangeEqualCapacity", testReadableBufferViewRangeEqualCapacity),
                ("testBufferViewCoWs", testBufferViewCoWs),
                ("testBufferViewMutationViaSubscriptIndex", testBufferViewMutationViaSubscriptIndex),
                ("testBufferViewReplaceBeyondEndOfRange", testBufferViewReplaceBeyondEndOfRange),
                ("testBufferViewReplaceWithSubrangeOfSelf", testBufferViewReplaceWithSubrangeOfSelf),
                ("testBufferViewMutationViaSubscriptRange", testBufferViewMutationViaSubscriptRange),
                ("testBufferViewReplaceSubrangeWithEqualLengthBytes", testBufferViewReplaceSubrangeWithEqualLengthBytes),
                ("testBufferViewReplaceSubrangeWithFewerBytes", testBufferViewReplaceSubrangeWithFewerBytes),
                ("testBufferViewReplaceSubrangeWithMoreBytes", testBufferViewReplaceSubrangeWithMoreBytes),
                ("testBufferViewEmpty", testBufferViewEmpty),
                ("testBufferViewFirstIndex", testBufferViewFirstIndex),
                ("testBufferViewLastIndex", testBufferViewLastIndex),
                ("testByteBuffersCanBeInitializedFromByteBufferViews", testByteBuffersCanBeInitializedFromByteBufferViews),
                ("testReserveCapacityWhenOversize", testReserveCapacityWhenOversize),
                ("testReserveCapacitySameCapacity", testReserveCapacitySameCapacity),
                ("testReserveCapacityLargerUniquelyReferencedCallsRealloc", testReserveCapacityLargerUniquelyReferencedCallsRealloc),
                ("testReserveCapacityLargerMultipleReferenceCallsMalloc", testReserveCapacityLargerMultipleReferenceCallsMalloc),
                ("testReserveCapacityWithMinimumWritableBytesWhenNotEnoughWritableBytes", testReserveCapacityWithMinimumWritableBytesWhenNotEnoughWritableBytes),
                ("testReserveCapacityWithMinimumWritableBytesWhenEnoughWritableBytes", testReserveCapacityWithMinimumWritableBytesWhenEnoughWritableBytes),
                ("testReserveCapacityWithMinimumWritableBytesWhenSameWritableBytes", testReserveCapacityWithMinimumWritableBytesWhenSameWritableBytes),
                ("testReadWithFunctionsThatReturnNumberOfReadBytesAreDiscardable", testReadWithFunctionsThatReturnNumberOfReadBytesAreDiscardable),
                ("testWriteAndSetAndGetAndReadEncoding", testWriteAndSetAndGetAndReadEncoding),
                ("testPossiblyLazilyBridgedString", testPossiblyLazilyBridgedString),
                ("testWithVeryUnsafeMutableBytesWorksOnEmptyByteBuffer", testWithVeryUnsafeMutableBytesWorksOnEmptyByteBuffer),
                ("testWithVeryUnsafeMutableBytesYieldsPointerToWholeStorage", testWithVeryUnsafeMutableBytesYieldsPointerToWholeStorage),
                ("testWithVeryUnsafeMutableBytesYieldsPointerToWholeStorageAndCanBeWritenTo", testWithVeryUnsafeMutableBytesYieldsPointerToWholeStorageAndCanBeWritenTo),
                ("testWithVeryUnsafeMutableBytesDoesCoW", testWithVeryUnsafeMutableBytesDoesCoW),
                ("testWithVeryUnsafeMutableBytesDoesCoWonSlices", testWithVeryUnsafeMutableBytesDoesCoWonSlices),
                ("testGetDispatchDataWorks", testGetDispatchDataWorks),
                ("testGetDispatchDataReadWrite", testGetDispatchDataReadWrite),
                ("testVariousContiguousStorageAccessors", testVariousContiguousStorageAccessors),
                ("testGetBytesThatAreNotReadable", testGetBytesThatAreNotReadable),
                ("testByteBufferViewAsDataProtocol", testByteBufferViewAsDataProtocol),
                ("testDataByteTransferStrategyNoCopy", testDataByteTransferStrategyNoCopy),
                ("testDataByteTransferStrategyCopy", testDataByteTransferStrategyCopy),
                ("testDataByteTransferStrategyAutomaticMayNotCopy", testDataByteTransferStrategyAutomaticMayNotCopy),
                ("testDataByteTransferStrategyAutomaticMayCopy", testDataByteTransferStrategyAutomaticMayCopy),
                ("testViewBytesIsHappyWithNegativeValues", testViewBytesIsHappyWithNegativeValues),
                ("testByteBufferAllocatorSize1Capacity", testByteBufferAllocatorSize1Capacity),
                ("testByteBufferModifiedWithoutAllocationLogic", testByteBufferModifiedWithoutAllocationLogic),
                ("testByteBufferModifyIfUniquelyOwnedMayThrow", testByteBufferModifyIfUniquelyOwnedMayThrow),
                ("testDeprecatedSetBytes", testDeprecatedSetBytes),
                ("testWriteRepeatingBytes", testWriteRepeatingBytes),
                ("testSetRepeatingBytes", testSetRepeatingBytes),
                ("testSetRepeatingBytes_unqiueReference", testSetRepeatingBytes_unqiueReference),
                ("testWriteOptionalWorksForNilCase", testWriteOptionalWorksForNilCase),
                ("testWriteOptionalWorksForNonNilCase", testWriteOptionalWorksForNonNilCase),
                ("testWriteImmutableOptionalWorksForNilCase", testWriteImmutableOptionalWorksForNilCase),
                ("testWriteImmutableOptionalWorksForNonNilCase", testWriteImmutableOptionalWorksForNonNilCase),
                ("testWritingToEmptyDoesNotCauseTrouble", testWritingToEmptyDoesNotCauseTrouble),
                ("testReadEmptySliceFromEmpty", testReadEmptySliceFromEmpty),
                ("testConvenienceStringInitWorks", testConvenienceStringInitWorks),
                ("testConvenienceCreateUInt64", testConvenienceCreateUInt64),
                ("testConvenienceCreateUInt8", testConvenienceCreateUInt8),
                ("testConvenienceCreateBuffer", testConvenienceCreateBuffer),
                ("testConvenienceCreateRepeatingByte", testConvenienceCreateRepeatingByte),
                ("testConvenienceCreateData", testConvenienceCreateData),
                ("testConvenienceCreateDispatchData", testConvenienceCreateDispatchData),
                ("testConvenienceCreateStaticString", testConvenienceCreateStaticString),
                ("testConvenienceCreateSubstring", testConvenienceCreateSubstring),
                ("testConvenienceCreateBytes", testConvenienceCreateBytes),
                ("testAllocatorGivesStableZeroSizedBuffers", testAllocatorGivesStableZeroSizedBuffers),
                ("testClearOnZeroCapacityActuallyAllocates", testClearOnZeroCapacityActuallyAllocates),
                ("testCreateBufferFromSequence", testCreateBufferFromSequence),
                ("testWeDoNotResizeIfWeHaveExactlyTheRightCapacityAvailable", testWeDoNotResizeIfWeHaveExactlyTheRightCapacityAvailable),
                ("testWithUnsafeMutableReadableBytesNoCoW", testWithUnsafeMutableReadableBytesNoCoW),
                ("testWithUnsafeMutableReadableBytesCoWOfNonSlice", testWithUnsafeMutableReadableBytesCoWOfNonSlice),
                ("testWithUnsafeMutableReadableBytesCoWOfSlice", testWithUnsafeMutableReadableBytesCoWOfSlice),
                ("testWithUnsafeMutableReadableBytesAllThingsNonZero", testWithUnsafeMutableReadableBytesAllThingsNonZero),
                ("testCreateArrayFromBuffer", testCreateArrayFromBuffer),
                ("testCreateStringFromBuffer", testCreateStringFromBuffer),
                ("testCreateDispatchDataFromBuffer", testCreateDispatchDataFromBuffer),
                ("testCreateBufferFromArray", testCreateBufferFromArray),
                ("testByteBufferViewEqualityWithRange", testByteBufferViewEqualityWithRange),
                ("testInvalidBufferEqualityWithDifferentRange", testInvalidBufferEqualityWithDifferentRange),
                ("testInvalidBufferEqualityWithDifferentContent", testInvalidBufferEqualityWithDifferentContent),
                ("testHashableConformance", testHashableConformance),
                ("testInvalidHash", testInvalidHash),
                ("testValidHashFromSlice", testValidHashFromSlice),
           ]
   }
}

